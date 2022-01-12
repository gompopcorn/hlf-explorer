#!/usr/bin/env bash

rm -rf dockerConfig/crypto-config

mkdir -p dockerConfig/crypto-config

cp -r ../org1/crypto-config/peerOrganizations/org1.example.com/ dockerConfig/crypto-config/ordererOrganizations
cp -r ../org2/crypto-config/peerOrganizations/org2.example.com/ dockerConfig/crypto-config/ordererOrganizations
cp -r ../org3/crypto-config/peerOrganizations/org3.example.com/ dockerConfig/crypto-config/ordererOrganizations
cp -r ../org4/crypto-config/peerOrganizations/org4.example.com/ dockerConfig/crypto-config/ordererOrganizations
cp -r ../org5/crypto-config/peerOrganizations/org5.example.com/ dockerConfig/crypto-config/ordererOrganizations

cp -r ../org1/crypto-config/peerOrganizations/ dockerConfig/crypto-config/
cp -r ../org2/crypto-config/peerOrganizations/ dockerConfig/crypto-config/
cp -r ../org3/crypto-config/peerOrganizations/ dockerConfig/crypto-config/
cp -r ../org4/crypto-config/peerOrganizations/ dockerConfig/crypto-config/
cp -r ../org5/crypto-config/peerOrganizations/ dockerConfig/crypto-config/

sleep 5
docker-compose up -d
sleep 10
docker ps -a
