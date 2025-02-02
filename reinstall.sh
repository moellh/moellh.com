#!/bin/bash

echo "=== Reinstalling moellh.com ==="

SERVER_DIR=/var/www/html
rsync -av --delete website/ "$SERVER_DIR"
