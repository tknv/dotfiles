#!/bin/sh
find . -type d -name .git | while read dir; do pushd "$dir"; git gc --prune; popd; done
