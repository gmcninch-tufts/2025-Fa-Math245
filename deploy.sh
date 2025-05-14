#!/usr/bin/env bash

echo "deploying math245-site"
cd /home/george/Prof-VC/classes/2025-Fa-Math245/
git add .
read -p "Commit message: " msg
git commit -m "$msg"
git push origin main
