#!/bin/bash

export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
export HOME=/home/pacs/{{pac}}/users/{{user}}
source $HOME/.profile
export PID=$HOME/var/run/peertube.pid
export NODE_ENV=production
export NODE_CONFIG_DIR=$HOME/config
cd $HOME/peertube-latest
node dist/server >$HOME/var/log/gitea.log 2>&1 &
echo $! > $PID
