#!/bin/bash

export CASSADNRA_VERSION=$(echo $1 | grep -Po '\d.\d.\d')
export STRATIO_PLUGIN_VERSION=$1

# Create Dockerfile
echo "Creating Dockerfile from cassandra:$CASSADNRA_VERSION with cassandra-lucene-index:$STRATIO_PLUGIN_VERSION"
cat Dockerfile.template | envsubst > Dockerfile
