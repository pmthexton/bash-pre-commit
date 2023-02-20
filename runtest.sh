#!/bin/bash

expect=0
if [ "$2" == "Fail" ]
then
    expect=1
fi

./pre-commit < $1 2>/dev/null
test $? -eq $expect

