#!/usr/bin/env python3

import sys
import itertools
import subprocess
import time
from subprocess import TimeoutExpired,PIPE,DEVNULL
from pathlib import Path
import fileinput


def parse_summary(lines, sensitive_functions):
    for line in lines:
        if "call summary" in line:
            CALL_SUMMARY = "call summary:"
            i1 = line.find(CALL_SUMMARY)
            function = int(line[0:i1])
            summaries = line[i1+len(CALL_SUMMARY):].strip()
            if summaries:
                for s in itertools.batched(summaries.split(" "), 3):
                    call = int(s[0])
                    if call not in sensitive_functions:
                        continue
                    if(len(s) == 3):
                        # we dont need the properly separated taints
                        # taints = [[t for t in arg.split(',') if t] for arg in s[2].split(";")]
                        s = {t for arg in s[2].split(';') for t in arg.split(',') if t}
                        if 'TopTaint' in s:
                            return f"sensitive function called (transitively) by {function} with taint" 
    return "no flow"


introduce_taint = { "tapos_block_num", "tapos_block_prefix" }
sensitive = { "send_inline", "send_deferred", "send_context_free_inline" }

def get_module_data(wasm_module_path):
    proc = subprocess.Popen(["wasm2wat", wasm_module_path], stdout=PIPE, stderr=DEVNULL) 

    outs = ""

    try:
        outs, errs = proc.communicate(timeout=15)

        if proc.returncode != 0:
            print(f"{wasm_module_path.name};-;error while executing wat2wasm")
            sys.exit(1)

    except TimeoutExpired:
        proc.kill()
        outs, errs = proc.communicate()
        print(f"{wasm_module_path.name};-;wat2wasm timed out")
        sys.exit(1)
        

    imports = 0
    funcs = 0

    interesting_imports = {k: None for k in introduce_taint.union(sensitive) }

    for line in outs.decode('utf-8').split("\n"):
        if line.startswith('  (import "env" '):
            imports = imports + 1

            func_name = line.split('"')[3]

            if func_name in interesting_imports:
                if interesting_imports[func_name] is None:
                    interesting_imports[func_name] = line.split(';')[1]
                else:
                    raise AssertionError(f"function '{func_name}' is imported twice")

        elif line.startswith("  (func"):
            funcs = funcs + 1

    return (interesting_imports, imports, funcs)

def get_wassail_output_by_executing(wasm_module_path, imports, funcs, only_print_command=False):
    analyzed_function_arg = ','.join([f'{i}' for i in range(imports, imports + funcs)])
    wassail_cmd = ["wassail", "taintcall-cfg", wasm_module_path, analyzed_function_arg]

    if only_print_command:
        wassail_cmd = ["wassail", "taintcall-cfg", wasm_module_path.name, analyzed_function_arg]
    # wassail_cmd = ["docker", "run", "--rm", "-v", f"{wasm_module_path.parent}:/mnt", "-ti", "wassail", "/home/opam/.opam/4.14/bin/wassail", "taintcall-cfg", wasm_module_path.name, analyzed_function_arg]

    if only_print_command:
        print(" ".join(wassail_cmd))
        return

    start_time = time.time()
    run_time = -1

    try:
        wassail_proc = subprocess.Popen(wassail_cmd, stdout=PIPE, stderr=DEVNULL) 
        outs, errs = wassail_proc.communicate(timeout=3600)
        run_time = time.time() - start_time

        if wassail_proc.returncode != 0:
            if outs:
                print(outs.decode('utf-8'))
            if errs:
                print(errs.decode('utf-8'))
            print(f"{wasm_module_path.name};{run_time};error while executing wassail")
            sys.exit(1)

    except TimeoutExpired:
        wassail_proc.kill()
        outs, errs = wassail_proc.communicate()
        print(f"{wasm_module_path.name};{run_time};wassail timed out")
        sys.exit(1)

    return ([l for l in outs.decode('utf-8').split("\n") if l], run_time)  # noqa: E741



if __name__ == "__main__":
    get_wassail_output = get_wassail_output_by_executing
    only_print_command = False

    match sys.argv[1]:
        case "print-wassail-command":
            only_print_command = True
            pass
        case "whole-analysis":
            pass
        case "parse-wassail-output":
            get_wassail_output = lambda w,x,y,z: (sys.stdin.readlines(), 0)  # noqa: E731
            pass
        case s:
            print(f"invalid-command: '{s}'") 
            sys.exit(0)
        
    wasm_module_path = Path(sys.argv[2])

    interesting_imports, imports, funcs = get_module_data(wasm_module_path)

    if any(interesting_imports[k] for k in introduce_taint) and any(interesting_imports[k] for k in sensitive):
        pass
    else:
        print(f"{wasm_module_path.name};-;trivially-safe")
        sys.exit(0)

    res = get_wassail_output(wasm_module_path, imports, funcs, only_print_command)

    if only_print_command:
        sys.exit(0)

    res, run_time = res

    sensitive_functions = {int(interesting_imports[v]) for v in sensitive if interesting_imports[v]} 
    
    result = parse_summary(res, sensitive_functions)

    print(f"{wasm_module_path.name};{run_time};{result}")

    sys.exit(0)
