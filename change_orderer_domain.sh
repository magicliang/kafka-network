#!/bin/bash

echo "chaning ORDERER_DOMAIN to $1"

if [ ! -z "$1" -a "$1" != " " ]; then

echo "chaning ORDERER_DOMAIN to $1"


FILES="./docker-compose-e2e-template.yaml
./docker-compose-couch.yaml
./docker-compose-cli.yaml
./crypto-config.yaml
./scripts/script.sh
./base/docker-compose-base.yaml
./configtx.yaml
"
for f in $FILES
do
	sed -i_backup "s/ORDERER_DOMAIN/$1/g" $f
	rm "${f}_backup"
done

fi