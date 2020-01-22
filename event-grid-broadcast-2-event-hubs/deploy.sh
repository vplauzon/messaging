#!/bin/bash

##########################################################################
##  Deploys the solution
##
##  Parameters:
##
##  1- Name of resource group
##  2- Event Grid Topic Name Prefix
##  3- Event Grid Topic Count
##  4- Event Hub Namespace Prefix
##  5- Event Hub Namespace Count
##  6- Storage Acount Name
##  7- Function App Name

rg=$1
topicPrefix=$2
topicCount=$3
nsPrefix=$4
nsCount=$5
storage=$6
function=$7

echo "Resource group:  $rg"
echo "Event Topic Prefix:  $topicPrefix"
echo "Count for Event Topic:  $topicCount"
echo "Event Hub namespace prefix:  $nsPrefix"
echo "Count for Event Hub namespaces:  $nsCount"
echo "Storage Acount Name:  $storage"
echo "Function App Name:  $function"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    topicNamePrefix=$topicPrefix \
    topicCount=$topicCount \
    eventHubNamespacePrefix=$nsPrefix \
    eventHubNamespaceCount=$nsCount \
    storageAccountName=$storage \
    functionAppName=$function