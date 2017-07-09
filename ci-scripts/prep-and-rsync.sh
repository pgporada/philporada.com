#!/bin/bash
set -e
set -x
rm -rf .git* Jenkinsfile .well-known
DIR="/var/www/domains/philporada.com/www/htdocs/"
rsync -avHSP --omit-dir-times --delete --exclude .well-known site/ "${DIR}"
restorecon "${DIR}"
