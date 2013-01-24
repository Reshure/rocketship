#!/bin/sh

# Quick bash script to test all functions.
# TODO: make a moonscript file to do this instead.

echo "Testing all functions.\n"

# Func
cd ./func
files=`ls -1 test_*.moon`
for file in $files
do
  moon $file
done
echo "func: all tests passed.\n"

# String
cd ../string
files=`ls -1 test_*.moon`
for file in $files
do
  moon $file
done
echo "string: all tests passed.\n"

echo "Done. All tests passed."