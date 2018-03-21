#!/bin/bash

# path to clang++, llvm-dis, and opt
LLVM_BIN=/LLVM_ROOT/build/bin
# path to CSE231.so
LLVM_SO=/LLVM_ROOT/build/lib
# path to lib231.c
LIB_DIR=/lib231
# path to the test directory
TEST_DIR=/LLVM_ROOT/llvm/test/Transforms/MemCpyOpt

for filename in $TEST_DIR/*.ll; do
	$LLVM_BIN/opt -load $LLVM_SO/CSE231.so -cse231-maypointto < $filename > /dev/null 2> /output/run/$(basename "$filename".result)
	/solution/opt -cse231-maypointto < $filename > /dev/null 2> /output/run/$(basename "$filename"_sol.result)

	DIFF=$(diff -u /output/run/$(basename "$filename".result) /output/run/$(basename "$filename"_sol.result))
	if [ "$DIFF" != "" ]
	then
		echo $(basename "$filename".result)
	fi
done





# $LLVM_BIN/opt -load $LLVM_SO/CSE231.so -cse231-maypointto < $TEST_DIR/align.ll > /dev/null 2> /output/align.result
# /solution/opt -cse231-maypointto < $TEST_DIR/align.ll > /dev/null 2> /output/align_sol.result

# diff -u /output/align.result /output/align_sol.result

