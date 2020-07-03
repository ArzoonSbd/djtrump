#!/bin/sh

  cd djtrump
  git pull
  source /root/djtrumpenv/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
