#!/bin/bash
usage() {
    echo "usage: ./script.sh [target-dir] file-pattern"
}

dir="."
pattern="*"
if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    usage
    exit
fi

echo "hello"
if [ $# -eq 2 ]; then
    if [ -d $1 ]; then
        dir=$1
    else
        echo "$1 is not a dir"
        exit
    fi
    pattern=$2
else
    pattern=$1
fi
pattern="$pattern"

find $dir -name $pattern
