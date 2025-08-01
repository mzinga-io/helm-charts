#!/usr/bin/env bash

set -e;

if [ "$API_KEY" == "" ]; then
    echo "Missing 'API_KEY' variable. Skipping..."
    exit 0
fi

if [ "$KUBERNETES_SERVICE_PORT" != "" ]; then
    echo "Adding prerequisites"

    apt-get update && \
    apt-get install -y -q \
    curl \
    jq
fi

exec_time=$(date -u -Iseconds)
time_based_api=${API_BASE_URL:-https://api-mzinga.mzinga.io/api}/scheduled-tasks
echo "Requesting list of '$time_based_api'"
response=$(curl -s -H "Authorization: users API-Key $API_KEY" "${time_based_api}?limit=1000")

id_list=$(echo $response | jq -r ".docs[].id")
echo "Found ${id_list:-N/A}"

for id in $id_list
do
    curl \
        -s \
        -H "Authorization: users API-Key $API_KEY" \
        -H "Content-Type: application/json" \
        -X PATCH \
        -d '{"lastExecution": "'"$exec_time"'"}' \
        "${time_based_api}/$id"
done
