#!/bin/bash
set -e
set -x
find . -type f \
    -name "*.html" \
    -o -name "*.js" \
    -o -name "*.css" \
    -o -name "*.json" \
    -o -name "*.svg" \
    -o -name "*.xml" \
    -exec "minify {} -o {}" \;
