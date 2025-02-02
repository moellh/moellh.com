#!/bin/bash

cd $HOME/dev/moellh.com/

git fetch origin

if ! git diff --quiet origin/main; then
  git pull origin main
  ./reinstall.sh
  echo "Update up to commit with string: $(git log -1 --pretty=format:"%h %s")"
  journalctl -u moellh.com.service > $HOME/dev/moellh.com/website/journalctl.log
fi
