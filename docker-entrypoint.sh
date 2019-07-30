#!/bin/bash

set -e

AWS_CONFIG_FILE="/root/.aws/config"

if [[ -n ${AWS_ACCESS_KEY_ID} ]] && [[ -n ${AWS_SECRET_ACCESS_KEY} ]] && [[ -n ${AWS_DEFAULT_REGION} ]]; then
  mkdir -p /root/.aws
  echo "[profile eb-cli]" > ${AWS_CONFIG_FILE}
  echo "aws_access_key_id = ${AWS_ACCESS_KEY_ID}" >> ${AWS_CONFIG_FILE}
  echo "aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}" >> ${AWS_CONFIG_FILE}
  echo "" >> ${AWS_CONFIG_FILE}
  echo "[default]" >> ${AWS_CONFIG_FILE}
  echo "output = json" >> ${AWS_CONFIG_FILE}
  echo "region = ${AWS_DEFAULT_REGION}" >> ${AWS_CONFIG_FILE}
  chmod 600 /root/.aws/config
fi

export PATH=$PATH:/root/.local/bin

#exec "$@"

