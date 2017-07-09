#!/bin/bash
set -e
set -x
PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin
minify -r site/ -o site/
