#!/bin/sh

TARGET_HOST="${1:-$TARGET_HOST}"
TARGET_PORT="${2:-$TARGET_PORT}"
PUBLIC_DOMAIN="${3:-$PUBLIC_DOMAIN}"

if [ -z "${TARGET_HOST}" ];
then
  echo "No target hostname defined."
  exit -1
fi

if [ -z "${TARGET_PORT}" ];
then
  echo "No target port defined.
  exit -1
fi

if [ -z "${PUBLIC_DOMAIN}" ]; then
  ssh -R 80:${TARGET_HOST}:${TARGET_PORT}
else 
    ssh -R ${PUBLIC_DOMAIN}:80:${TARGET_HOST}:${TARGET_PORT}
fi