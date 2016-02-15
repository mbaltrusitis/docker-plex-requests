#!/bin/bash

if [ ! -d "/config/plexrequests-meteor" ]; then
  echo "First run, cloning repository and setting up persistent configuration"
  git clone https://github.com/lokenx/plexrequests-meteor.git
  cd plexrequests-meteor
  mkdir -p /configdata/plex-requests/local
  ln -sf /configdata/plex-requests/local/ .meteor/local/
else
  echo "Already configured, updating repository"
  cd plexrequests-meteor
  git pull
fi

exec /usr/local/bin/meteor