#!/bin/bash -x

echo "Performing checkup:"
pwd
ls -al
cppcheck $2 --language=c++ --template="::{severity} file={file},line={line},col={column}::{message}" $1
