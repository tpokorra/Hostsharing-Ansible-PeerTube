#!/bin/bash

source $HOME/.profile

# see https://github.com/Chocobozzz/PeerTube/blob/develop/support/doc/tools.md#update-hostjs

# manually update the new domain url in config/production.yaml 

cd $HOME/peertube-latest
NODE_CONFIG_DIR=~/config NODE_ENV=production npm run update-host
