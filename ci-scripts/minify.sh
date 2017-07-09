#!/bin/bash
set -e
set -x
which minify
stat $(which minify)
minify -r site/ -o site/
