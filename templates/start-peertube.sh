#!/bin/bash

source $HOME/.profile
export NODE_ENV=production
export NODE_CONFIG_DIR=/home/pacs/{{pac}}/users/{{user}}/config
cd /home/pacs/{{pac}}/users/{{user}}/peertube-latest
node dist/server &
echo $! > $PID
