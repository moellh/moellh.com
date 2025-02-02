#!/bin/bash

cp moellh-com-update.service /etc/systemd/system/
cp moellh-com-update.timer /etc/systemd/system/
systemctl daemon-reload
systemctl enable moellh-com-update.timer
systemctl start moellh-com-update.timer
