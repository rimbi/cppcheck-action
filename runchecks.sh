#!/bin/bash -x

echo "Performing checkup:"
pwd
ls -al
cppcheck $2 $1 --error-exitcode=1
