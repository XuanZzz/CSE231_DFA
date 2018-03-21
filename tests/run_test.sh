#!/bin/bash

# path to clang++, llvm-dis, and opt
LLVM_BIN=/LLVM_ROOT/build/bin
# path to CSE231.so
LLVM_SO=/LLVM_ROOT/build
# path to lib231.c
LIB_DIR=/LLVM_ROOT/llvm/lib/Transforms/CSE231_Project/DFA
# path to the test directory
TEST_DIR=/tests/test-example

echo "testing liveness"
echo "======================"
echo "testing test_fib.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_fib.ll 2> /tmp/00.result
/solution/opt -cse231-liveness <$TEST_DIR/test_fib.ll 2> /tmp/01.result
DIFF=$(diff /tmp/00.result /tmp/01.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_malloc.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_malloc.ll 2> /tmp/10.result
/solution/opt -cse231-liveness <$TEST_DIR/test_malloc.ll 2> /tmp/11.result
DIFF=$(diff /tmp/10.result /tmp/11.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi
echo "testing test_mat.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_mat.ll 2> /tmp/20.result
/solution/opt -cse231-liveness <$TEST_DIR/test_mat.ll 2> /tmp/21.result
DIFF=$(diff /tmp/20.result /tmp/21.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi
echo "testing test_sort.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_sort.ll 2> /tmp/30.result
/solution/opt -cse231-liveness <$TEST_DIR/test_sort.ll 2> /tmp/31.result
DIFF=$(diff /tmp/30.result /tmp/31.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_phi.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_phi.ll 2> /tmp/40.result
/solution/opt -cse231-liveness <$TEST_DIR/test_phi.ll 2> /tmp/41.result
DIFF=$(diff /tmp/40.result /tmp/41.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_select.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_select.ll 2> /tmp/50.result
/solution/opt -cse231-liveness <$TEST_DIR/test_select.ll 2> /tmp/51.result
DIFF=$(diff /tmp/50.result /tmp/51.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_infloop.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_infloop.ll 2> /tmp/60.result
/solution/opt -cse231-liveness <$TEST_DIR/test_infloop.ll 2> /tmp/61.result
DIFF=$(diff /tmp/60.result /tmp/61.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_fib.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_fib20.ll 2> /tmp/70.result
/solution/opt -cse231-liveness <$TEST_DIR/test_fib20.ll 2> /tmp/71.result
DIFF=$(diff /tmp/70.result /tmp/71.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_fib.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-liveness <$TEST_DIR/test_fib30.ll 2> /tmp/80.result
/solution/opt -cse231-liveness <$TEST_DIR/test_fib30.ll 2> /tmp/81.result
DIFF=$(diff /tmp/80.result /tmp/81.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi


echo "testing maypointto"
echo "======================"
echo "testing test_fib.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_fib.ll 2> /tmp/100.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_fib.ll 2> /tmp/101.result
DIFF=$(diff /tmp/100.result /tmp/101.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi
echo "testing test_malloc.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_malloc.ll 2> /tmp/110.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_malloc.ll 2> /tmp/111.result
DIFF=$(diff /tmp/110.result /tmp/111.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi
echo "testing test_mat.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_mat.ll 2> /tmp/120.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_mat.ll 2> /tmp/121.result
DIFF=$(diff /tmp/120.result /tmp/121.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi
echo "testing test_sort.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_sort.ll 2> /tmp/130.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_sort.ll 2> /tmp/131.result
DIFF=$(diff /tmp/130.result /tmp/131.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_phi.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_phi.ll 2> /tmp/140.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_phi.ll 2> /tmp/141.result
DIFF=$(diff /tmp/140.result /tmp/141.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_select.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_select.ll 2> /tmp/150.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_select.ll 2> /tmp/151.result
DIFF=$(diff /tmp/150.result /tmp/151.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_infloop.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_infloop.ll 2> /tmp/160.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_infloop.ll 2> /tmp/161.result
DIFF=$(diff /tmp/160.result /tmp/161.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_fib.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_fib20.ll 2> /tmp/170.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_fib20.ll 2> /tmp/171.result
DIFF=$(diff /tmp/170.result /tmp/171.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi

echo "testing test_fib.ll"
$LLVM_BIN/opt -load CSE231.so -cse231-maypointto <$TEST_DIR/test_fib30.ll 2> /tmp/180.result
/solution/opt -cse231-maypointto <$TEST_DIR/test_fib30.ll 2> /tmp/181.result
DIFF=$(diff /tmp/180.result /tmp/181.result)
if [ "$DIFF" == "" ]
then
	echo "test passed"
else
	echo "$DIFF"
fi
