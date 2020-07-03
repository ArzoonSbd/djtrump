#!/bin/sh

  cd /home/ubuntu/djtrump
  pwd
  git checkout master
  git pull
  pwd
  deactivate
  source /home/ubuntu/djtrumpenv/bin/activate
  sleep 20
  pip3 install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
