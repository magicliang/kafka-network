#!/bin/bash

echo "chaning org1.example.com to ORG1_DOMAIN"
echo "chaning org2.example.com to ORG2_DOMAIN"
echo "chaning orderer.example.com to ORDERER_DOMAIN"

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
	sed -i_backup "s/org1.example.com/ORG1_DOMAIN/g" $f
	# sed -i_backup "s/org2.example.com/ORG2_DOMAIN/g" $f
	sed -i_backup "s/orderer.example.com/ORDERER_DOMAIN/g" $f
	rm "${f}_backup"
done