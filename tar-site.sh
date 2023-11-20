#!/bin/bash

set -e

FOLDER=html
TAR=site.tar.gz

make clean
make html-all
cd ${FOLDER}
tar -cvz . > ../${TAR}
