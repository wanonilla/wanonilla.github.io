# Wanilla
This repository hosts the associated data for "Wanilla: Sound Noninterference Analysis for WebAssembly"

## Reproducing Results

All following command are assumed to be executed in a directory that contains the data from this repository, i.e., that the following commands have been executed:

```bash
git clone https://github.com/wanonilla/wanonilla.github.io
cd wanonilla.github.io
```

A collection of test cases `x` consists of a `x.json` (containing the specification of the security policy) and a `x.wasm` file (containing the analyzed WebAssembly module).
For convenience, we also include a human-readable `.wat`-file.

The json format is further documented in `spec/json_structure` and `spec/schema.json`. 

Your environment is expected to have a `java` and `z3` binaries available (tested where version `17` and `4.8.17`, respectively)

## Building our Experimental Abstract Analysis for SMT-Files

The benchmarks taken from EOSFuzzer are meant to be analyzed by our own solver for `.smt`-files.

Please remember that this solver is experimental an does only support the subset of SMT-LIB needed for our benchmark.
Furthermore note how to interpret `sat` and `unsat`:
`unsat` indeed means, that there is no variable assignment that satisfies the formula encoded in the `.smt`-file.
`sat` means, that there *may* be an assignment that satisfies the formula.

Your environment is assumed to have `clang++` (tested version: 17.0.6) and `make` (tested version `GNU Make 4.4.1`) installed.

To build our solver execute:

```bash
cd asmt
make
```

### Verify Results from Figures 

<!-- Note that all `.smt` files are also available in `smt-pregen.tar.zst` for your convenience. -->

```bash
# generate all test cases for fig4 to smt-out/figures
mkdir -p smt-out/figures
java -cp bin/wanilla-0.0.1-SNAPSHOT.jar io.github.wanonilla.TestGenerator --test-in-dir spec/figures --smt-out-dir smt-out/figures --filter fig4

# generate all test cases in spec/figures to smt-out/figures
mkdir -p smt-out/figures
java -cp bin/wanilla-0.0.1-SNAPSHOT.jar io.github.wanonilla.TestGenerator --test-in-dir spec/figures --smt-out-dir smt-out/figures

# generate all test cases for fig4 to smt-out/figures, from the perspective of the ST attacker (ST = secret-trusted = HL)
mkdir -p smt-out/figures
java -cp bin/wanilla-0.0.1-SNAPSHOT.jar io.github.wanonilla.TestGenerator --test-in-dir spec/figures --smt-out-dir smt-out/figures --filter fig4 --fixed-attackers ST

# execute a smt-file with z3
z3 smt-out/figures/fig4-0.smt

# when not fixing an attacker, the  
# the expected result is encoded in the name of the query name
# when fixing an attacker one has to check the specification wether
# the the query is sensible 
``` 

### Verify Resuls from EOSFuzzer

The results for the EOSFuzzer benchmark have not been established with `z3` but with our own tool mentioned above.

```bash
# check all non-trivial instances in the eosfuzzer dataset
# there are different smt-files for each possbile entrypoint

# generate all test cases for (this will take some time, due to the horst compiler not being designed for input files this big)
# there will be one input file for every entry point to the module 
mkdir -p smt-out/eosfuzzer/source
java -cp bin/wanilla-0.0.1-SNAPSHOT.jar io.github.wanonilla.TestGenerator --test-in-dir spec/eosfuzzer/source --smt-out-dir smt-out/eosfuzzer/source --filter lottery1 coingame eosfun

mkdir -p smt-out/eosfuzzer/atom
java -cp bin/wanilla-0.0.1-SNAPSHOT.jar io.github.wanonilla.TestGenerator --test-in-dir spec/eosfuzzer/atom --smt-out-dir smt-out/eosfuzzer/atom --filter random

for f in smt-out/eosfuzzer/source/{lottery1,coingame,eosfun}* smt-out/eosfuzzer/atom/random*; do
  echo $f
  ./asmt/asmt 2> /dev/null < $f | grep -E ':(un)?sat' 
done
```

#### Run Wassail on EOSFuzzer Benchmarks

First you have to build the [wassail](https://github.com/acieroid/wassail) binary with the patches from `wassail/patches` applied (this is needed to fix a small bug in `wassail` and to give the specifications of `tapos_block_prefix` and `tapos_block_num`). 

Then with a `python` installation that has a modern version of `itertools` installed, `wasm2wasm` (from `wabt`) and `wassail` in the path, you can reproduce the results with:

```bash
bin/run-wassail.py whole-analysis spec/eosfuzzer/source/coingame.wasm
bin/run-wassail.py whole-analysis spec/eosfuzzer/source/eosfun.wasm
bin/run-wassail.py whole-analysis spec/eosfuzzer/source/lottery1.wasm
bin/run-wassail.py whole-analysis spec/eosfuzzer/atom/random.wasm
```


### Wanilla Benchmarks

```bash
# same as before, e.g.
mkdir -p smt-out/wanilla/basic
java -cp bin/wanilla-0.0.1-SNAPSHOT.jar io.github.wanonilla.TestGenerator --test-in-dir spec/wanilla/basic --smt-out-dir smt-out/wanilla/basic

for f in smt-out/wanilla/basic/*; do z3 $f; done; 
```

### RAPID Benchmarks

```bash
# same as before
mkdir -p smt-out/rapid
java -cp bin/wanilla-0.0.1-SNAPSHOT.jar io.github.wanonilla.TestGenerator --test-in-dir spec/rapid --smt-out-dir smt-out/rapid

for f in smt-out/rapid/*; do z3 $f; done; 
```


