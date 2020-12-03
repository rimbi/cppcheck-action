#!/bin/bash

echo "Performing checkup:"
cppcheck $3 --language=c++ --enable=$2 --template="::{severity} file={file},line={line},col={column}::{message}" $1
