#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

# OMS_ BACK-END
echo -e "${GREEN}Cloning OMS_ BACK-END repository...${NC}"
git clone git@github.com:UPskill-Javascript/U24T05-G2_OMS_BE.git OMS_BE

# SAFE-TOURISM_ BACK-END
echo -e "${GREEN}Cloning SAFE-TOURISM_ BACK-END repository...${NC}"
git clone git@github.com:UPskill-Javascript/U24T05-G2_SafeTourism_BE.git SAFE_TOURISM_BE

cp ./.oms_env ./OMS_BE/.env
cp ./.st_env ./SAFE_TOURISM_BE/.env

docker-compose up --build