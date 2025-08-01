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

export DEBIAN_FRONTEND=noninteractive
export TZ=Etc/UTC


echo "Installing psql"
apt-get install -y \
    curl \
    ca-certificates
install -d /usr/share/postgresql-common/pgdg
curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc
. /etc/os-release
sh -c "echo 'deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $VERSION_CODENAME-pgdg main' > /etc/apt/sources.list.d/pgdg.list"

apt-get update && \
    apt-get -y -q install postgresql postgresql-client-17

echo "psql installed successfully!"

echo "Setting up pgpass"
su postgres
echo "${PSQL_HOST}:${PSQL_PORT}:zitadel:${PSQL_POSTGRES_USER}:${PSQL_POSTGRES_PASSWORD}" > ~/.pgpass
chmod 600 ~/.pgpass

echo "pgpass setup done!"

backup_time=$(date +"%Y%m%d%H%M")

echo "Running pg_dump zitadel > /backups/zitadel_${backup_time}.sql"

pg_dump -U $PSQL_POSTGRES_USER -h $PSQL_HOST -c -C zitadel > /backups/zitadel_${backup_time}.sql

echo "Backup done!"
