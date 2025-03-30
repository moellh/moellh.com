#!/bin/bash

git fetch origin
git submodule update --init --recursive

if ! git diff --quiet origin/main; then
  git pull origin main
  echo "Update up to commit: $(git log -1 --pretty=format:"%h %s")"
fi

cd ./mensakrabbler/; ./update.sh; cd ..
cp ./mensakrabbler/website/index.html ./website/mensakrabbler/index.html

journalctl -u moellh-com-update.service > ./website/journalctl.log

SERVER_DIR=/var/www/html
rsync -av --delete website/ "$SERVER_DIR"
