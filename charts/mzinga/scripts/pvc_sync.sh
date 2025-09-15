#!/usr/bin/env bash

set -e;

currentTier=${TIER:-basic}
tenant=${TENANT:-tenant}
currentTierDirectory="/app/$tenant/uploads-$currentTier/"

allTiers=("basic" "pro" "ultra")

for tier in "${allTiers[@]}"; do
    if [ "$tier" == "$currentTier" ]; then
        echo "Found current tier ($tier). Nothing to do here."
    else
        tierDirectory="/app/$tenant/uploads-$tier"
        if [ -d "$tierDirectory" ]; then
            echo "Starting copy from $tierDirectory to $currentTierDirectory"
            cp -Rv "$tierDirectory/." $currentTierDirectory
            echo "Copy done from $tierDirectory to $currentTierDirectory"
        else
            echo "Could not find path: $tierDirectory"
        fi
    fi
done