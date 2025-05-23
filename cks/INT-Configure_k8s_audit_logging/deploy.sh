#!/bin/bash
set -e

echo "🔧 Creating lab resources ..."
kubectl apply -f manifests/ > /dev/null

sudo cp /etc/kubernetes/manifests/kube-apiserver.yaml /tmp/kube-apiserver.yaml.SAVE

echo
echo "************************************"
echo
cat README.txt
echo