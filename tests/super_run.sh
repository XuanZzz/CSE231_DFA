#!/bin/bash

# path to clang++, llvm-dis, and opt
LLVM_BIN=/LLVM_ROOT/build/bin
# path to CSE231.so
LLVM_SO=/LLVM_ROOT/build/lib
# path to lib231.c
LIB_DIR=/lib231
# path to the test directory
TEST_DIR=/LLVM_ROOT/llvm/test/Transforms

echo "testing liveness"
echo "======================"
count_1=0
correct_1=0
for foldername in $TEST_DIR/*; do
	# echo $foldername
	for filename in $foldername/*.ll; do
		# echo $filename
		$LLVM_BIN/opt -load $LLVM_SO/CSE231.so -cse231-liveness < $filename > /dev/null 2> /output/super/$(basename "$filename".result)
		/solution/opt -cse231-liveness < $filename > /dev/null 2> /output/super/$(basename "$filename"_sol.result)
		DIFF=$(diff -u /output/super/$(basename "$filename".result) /output/super/$(basename "$filename"_sol.result))
		if [ "$DIFF" == "" ]
		then
			correct_1=$((correct_1+1))
		# else
		# 	echo $(basename "$filename".result)
		fi
		count_1=$((count_1+1))
	done
done

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "testing cse231-maypointto"
echo "======================"
count_2=0
correct_2=0
for foldername in $TEST_DIR/*; do
	# echo $foldername
	for filename in $foldername/*.ll; do
		# echo $filename
		$LLVM_BIN/opt -load $LLVM_SO/CSE231.so -cse231-maypointto < $filename > /dev/null 2> /output/super/$(basename "$filename".result)
		/solution/opt -cse231-maypointto < $filename > /dev/null 2> /output/super/$(basename "$filename"_sol.result)
		DIFF=$(diff -u /output/super/$(basename "$filename".result) /output/super/$(basename "$filename"_sol.result))
		if [ "$DIFF" == "" ]
		then
			correct_2=$((correct_2+1))
		# else
		# 	echo $(basename "$filename".result)
		fi
		count_2=$((count_2+1))
	done
done

echo "$correct_1"
echo "$count_1"
echo "$correct_2"
echo "$count_2"
