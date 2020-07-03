#!/bin/sh

  cd /home/ubuntu/djtrump
  pwd
  git checkout master
  git pull
  source /home/ubuntu/djtrumpenv/bin/activate
  pip3 install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
