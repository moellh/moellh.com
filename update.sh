#!/bin/bash

cd $HOME/dev/moellh.com/

git fetch origin

if ! git diff --quiet origin/main; then
  git pull origin main
  echo "Update up to commit: $(git log -1 --pretty=format:"%h %s")"

  SERVER_DIR=/var/www/html
  rsync -av --delete website/ "$SERVER_DIR"
fi

journalctl -u moellh-com-update.service > $HOME/dev/moellh.com/website/journalctl.log
