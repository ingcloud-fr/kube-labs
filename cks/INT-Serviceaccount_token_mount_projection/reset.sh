#!/bin/bash
set -e

echo "🧹 Cleaning up the lab..."

rm -rf ~/manifests/ > /dev/null
# Delete resources using manifest files
kubectl delete -f manifests/ --ignore-not-found=true # > /dev/null 2>&1

echo "✅ Reset complete."