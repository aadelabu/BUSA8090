#!/bin/bash

set -e

arg=$1

if [[ -z "$arg" ]]; then
    echo "This is NOT a test"
    exit
fi
echo "This is a TEST"
