#!/bin/bash

source $HOME/.profile
export PT_INITIAL_ROOT_PASSWORD="{{adminpassword}}"
export NODE_CONFIG_DIR=/home/pacs/{{pac}}/users/{{user}}/config
export NODE_ENV=production
npm run reset-password -- -u root || exit -1

