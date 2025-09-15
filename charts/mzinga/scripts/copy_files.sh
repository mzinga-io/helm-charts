#!/usr/bin/env bash


if [ "$KUBERNETES_SERVICE_PORT" != "" ]; then
    echo "Adding prerequisites"
    
    apt-get update && \
    apt-get install -y -q \
    curl \
    jq \
    git
fi


repoUrl=$REPO_URL

currentTier=${TIER:-basic}
tenant=${TENANT:-tenant}

currentTierDirectory="/app/$tenant/extensibility-$currentTier/"

if [ ! -d $currentTierDirectory ]; then
    mkdir -p $currentTierDirectory
fi

if [ -d extensibility ]; then
    rm -rf extensibility
fi
echo "Cloning repository $repoUrl"
git clone --depth=1 $repoUrl extensibility

if [ ! -d extensibility ]; then
    echo "There was an error. Skipping any other operation."
    exit 0
fi
echo "Copying extensibility files"
cp -Rv "extensibility/configs/." $currentTierDirectory

echo "Done!"

