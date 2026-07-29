#!/bin/sh
set -e

echo "trying to restore the database (if it exists)..."
litestream restore -if-replica-exists /app/data/kuma.db

echo "starting replication and the application..."
exec litestream replicate
