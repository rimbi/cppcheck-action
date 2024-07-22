#!/bin/bash

echo "Performing checkup:"
cppcheck $2 $1 --error-exitcode=1
