#!/bin/bash

docker compose -f docker-compose.yml stop build-pvr.zattoo_x64
docker compose -f docker-compose.yml rm build-pvr.zattoo_x64
docker compose -f docker-compose.yml pull build-pvr.zattoo_x64
docker compose -f docker-compose.yml build build-pvr.zattoo_x64
docker compose -f docker-compose.yml run --remove-orphans build-pvr.zattoo_x64

docker compose -f docker-compose.yml stop build-pvr.zattoo_aarch64
docker compose -f docker-compose.yml rm build-pvr.zattoo_aarch64
docker compose -f docker-compose.yml pull build-pvr.zattoo_aarch64
docker compose -f docker-compose.yml build build-pvr.zattoo_aarch64
docker compose -f docker-compose.yml run --remove-orphans build-pvr.zattoo_aarch64
