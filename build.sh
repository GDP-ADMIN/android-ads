#!/bin/bash

set -e

for line in $(find . -name 'gradlew'); do
    p=$(dirname "${line}");
    pushd $p
    ./gradlew build
    popd
done
