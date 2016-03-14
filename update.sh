#!/bin/bash

export PYTHONUNBUFFERED=1

(
echo "$(date) starting"
git fetch
git clean -i
git pull origin master
git reset --hard origin/master
python update.py --clean True

echo "$(date) done"
) >> build.log 2>&1

