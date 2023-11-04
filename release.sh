#!/bin/bash

while getopts v: flag
do
    case "${flag}" in
        v) version=${OPTARG};;
    esac
done

docker run --rm -e VERSION=$version -v /mnt/c/Users/alaney/code:/code release
