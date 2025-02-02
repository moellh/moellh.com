#!/bin/bash

sudo cp moellh-com-update.service /etc/systemd/system/
sudo cp moellh-com-update.timer /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable moellh-com-update.timer
sudo systemctl start moellh-com-update.timer
