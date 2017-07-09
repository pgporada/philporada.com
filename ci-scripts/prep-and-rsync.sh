#!/bin/bash
set -e
set -x
rm -rf .git* Jenkinsfile .well-known
DIR="/var/www/domains/philporada.com/www/htdocs/"
rsync -avHsP --delete --exclude .well-known site/ "${DIR}"
restorecon "${DIR}"
