#!/bin/bash
set -e

echo "🔧 Creating lab resources ..."
echo "🔍 Installing tools ..."

tools/install-trivy-cli.sh > /dev/null


echo
echo "************************************"
echo
cat README.txt
echo
