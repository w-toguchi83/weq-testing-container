#!/bin/bash

if [ -z "${1}" ]; then
  ARG="up"
else
  ARG="${1}"
fi

case ${ARG} in
  run ) sudo docker-compose run --service-ports weq;;
  down ) sudo docker-compose down;;
  build ) sudo docker-compose build;;
  * ) echo "cannot kicked [${ARG}]" >&2;;
esac
