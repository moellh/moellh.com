#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl enable moellh-com-update.timer
sudo systemctl start moellh-com-update.timer
