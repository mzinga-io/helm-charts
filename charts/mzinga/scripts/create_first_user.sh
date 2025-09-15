#!/usr/bin/env bash

set -e;

if [ "$KUBERNETES_SERVICE_PORT" != "" ]; then
    echo "Adding prerequisites"
    
    apt-get update && \
    apt-get install -y -q \
    curl \
    jq
fi

email=${EMAIL:-info@mzinga.io}
firstName=${FIRST_NAME:-firstName}
lastName=${LAST_NAME:-lastName}

password=$PASSWORD
if [ "$password" == "" ]; then
    password=$(echo $RANDOM | md5sum | head -c 20)
fi
serverBaseUrl=${SERVER_BASE_URL:-http://localhost:3031}

firstRegisterUrl=$serverBaseUrl/api/users/first-register
echo "Requesting '$firstRegisterUrl' for email: '$email'"
response=$(curl -sS -# \
    -H "Content-Type: application/json" \
    -X POST \
    -d "{\"email\":\"$email\",\"password\":\"$password\",\"firstName\":\"$firstName\",\"lastName\":\"$lastName\",\"roles\":[\"admin\"]}" \
$firstRegisterUrl)

errors=$(echo $response | jq -j '.errors[]?.message')
if [ ! "$errors" == "" ]; then
    echo $errors
else
    echo $(echo $response | jq -j '.message?')
fi