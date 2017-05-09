#!/bin/bash

wget http://www.dbschema.com/download/DbSchema_unix_7_5_0.tar.gz -O dbschema.tar.gz
tar xvf dbschema.tar.gz
docker build -t marcelino/dbschema:v7.5 -t marcelino/dbschema:latest  .
