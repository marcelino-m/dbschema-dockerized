#!/bin/bash

DOCKERUSER=marcelino
MAJOR=8
MINOR=1
PATCH=0

if [ ! -f dbschema_${MAJOR}_${MINOR}_${PATCH}.tar.gz ]; then
    curl -L https://www.dbschema.com/download/DbSchema_unix_${MAJOR}_${MINOR}_${PATCH}.tar.gz --output dbschema_${MAJOR}_${MINOR}_${PATCH}.tar.gz
    tar xvf dbschema_${MAJOR}_${MINOR}_${PATCH}.tar.gz
fi

docker build -t "$DOCKERUSER"/dbschema:v${MAJOR}.${MINOR}.${PATCH} -t "$DOCKERUSER"/dbschema:latest .
