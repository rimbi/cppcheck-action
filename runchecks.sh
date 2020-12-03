#!/bin/bash

echo "Performing checkup:"
clang-tidy --version
clang-tidy *.c *.h *.cpp *.hpp *.C *.cc *.CPP *.c++ *.cp *.cxx -checks=boost-*,bugprone-*,performance-*,readability-*,portability-*,modernize-*,clang-analyzer-cplusplus-*,clang-analyzer-*,cppcoreguidelines-* > clang-tidy-report.txt

clang-format --style=llvm -i *.c *.h *.cpp *.hpp *.C *.cc *.CPP *.c++ *.cp *.cxx > clang-format-report.txt

cppcheck --language=c++ --enable=warning --template="::{severity} file={file},line={line},col={column}::{message}" *
