################################################################################
### CUSTOMIZE BELOW HERE #######################################################

# CC=g++ # define the compiler to use
CC=clang++ # define the compiler to use
CXX=clang++
TARGET=asmt # define the name of the executable
SOURCES=main.cpp smt.cpp adom.cpp helpers.cpp sexpr.cpp parser.cpp assignments.cpp
CPPFLAGS=-O3 --std=c++20 -Wall -Wpedantic -g
# CPPFLAGS=--std=c++20 -Wall -Wpedantic -g
# LFLAGS=-lm
LFLAGS=

################################################################################
### DO NOT EDIT THE FOLLOWING LINES ############################################

# define list of objects
OBJSC=$(SOURCES:.c=.o)
OBJS=$(OBJSC:.cpp=.o)

# the target is obtained linking all .o files
all: $(SOURCES) $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o $(TARGET)

purge: clean
	rm -f $(TARGET)

clean:
	rm -f *.o

################################################################################
################################################################################
