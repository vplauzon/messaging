#!/bin/bash

##########################################################################
##  Deploys an event hub
##
##  Parameters:
##
##  1- Name of resource group
##  2- Event Hub Name
##  3- Storage account Resource ID

rg=$1
eh=$2
storageId=$3

echo "Resource group:  $rg"
echo "Event Hub:  $eh"
echo "Event Hub:  $storageId"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    eventHub=$eh \
    storageAccountId=$storageId