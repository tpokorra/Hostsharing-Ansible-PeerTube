#!/bin/bash

source $HOME/.profile

# this only works on the first start of the peertube service
#export PT_INITIAL_ROOT_PASSWORD="{{adminpassword}}"

export NODE_CONFIG_DIR=/home/pacs/{{pac}}/users/{{user}}/config
export NODE_ENV=production
cd $HOME/peertube-latest
npm run reset-password -- -u root || exit -1

