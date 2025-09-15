#!/usr/bin/env bash

set -e;

if [ "$KUBERNETES_SERVICE_PORT" != "" ]; then
    echo "Adding prerequisites"
    
    apt-get update && \
    apt-get -y -q install \
    curl \
    gettext \
    jq
fi

echo "Installing percona-backup-mongodb"

curl -O https://repo.percona.com/apt/percona-release_latest.generic_all.deb

apt-get -y -q install \
gnupg2 \
lsb-release \
./percona-release_latest.generic_all.deb

apt-get update && \
percona-release enable pbm release

apt-get update && \
apt-get -y -q install \
percona-backup-mongodb

echo "percona-backup-mongodb installed successfully!"

echo "Checking pbm status..."
pbm status

template_dir=${TEMPLATE_DIR:-.}

envsubst < $template_dir/pbm_config_template.yaml > ./pbm_config.yaml

pbm config --file ./pbm_config.yaml

echo "Running: pbm backup --base --compression=gzip --ns=$TENANT.* --wait -l"

pbm backup --base --compression=gzip --ns=$TENANT.* --wait -l

echo "Backup done!"

echo "Listing all backups..."

pbm list
