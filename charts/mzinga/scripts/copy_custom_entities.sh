#!/usr/bin/env bash


if [ "$KUBERNETES_SERVICE_PORT" != "" ]; then
    echo "Adding prerequisites"
    
    apt-get update && \
    apt-get install -y -q \
    curl \
    jq

    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install kubectl /usr/local/bin/kubectl
fi

TENANT=${TENANT:-$1}
NAMESPACE=${NAMESPACE:-$2}
SOURCE_FOLDER=/app/$TENANT/custom-entities/drops
DEST_FOLDER=/app/$TENANT/custom-entities/definitions

if [ ! -d $SOURCE_FOLDER ]; then
    echo "No source folder found at: $SOURCE_FOLDER"
    exit 0
fi

filesInDropFolder=($(ls $SOURCE_FOLDER))

if [ ${#filesInDropFolder[@]} -eq 0 ]; then
    echo "No file(s) found in: $SOURCE_FOLDER. Skipping"
    exit 0
fi

if [ ! -d $DEST_FOLDER ]; then
    mkdir -p $DEST_FOLDER
fi

echo "Copying from $SOURCE_FOLDER to $DEST_FOLDER"
mv $SOURCE_FOLDER/* $DEST_FOLDER/

echo "Copy done!"

echo "Restarting deployment with label "app=mzinga""
kubectl rollout restart deployment -n $NAMESPACE --selector=app=mzinga

echo "Restart done!"

