#!/bin/bash

echo "reverting org1.example.com to ORG1_DOMAIN"

FILES="./docker-compose-e2e-template.yaml
./docker-compose-couch.yaml
./docker-compose-e2e.yaml
./docker-compose-cli.yaml
./crypto-config.yaml
./scripts/script.sh
./base/docker-compose-base.yaml
./configtx.yaml
"
for f in $FILES
do
	git checkout $f
done