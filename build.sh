#!/bin/bash

DOCKERUSER=${1:-marcelino}

wget http://www.dbschema.com/download/DbSchema_unix_7_5_1.tar.gz -O dbschema.tar.gz
tar xvf dbschema.tar.gz
docker build -t "$DOCKERUSER"/dbschema:v7.5.1 -t "$DOCKERUSER"/dbschema:latest -t .
