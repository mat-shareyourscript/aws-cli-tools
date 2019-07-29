#!/bin/bash

set -e

ln -s /root/.local/bin/* /usr/local/bin/

if [[ -n ${AWS_ACCESS_KEY_ID} ]] && [[ -n ${AWS_SECRET_ACCESS_KEY} ]] && [[ -n ${AWS_DEFAULT_REGION} ]]; then
  mkdir -p /root/.aws
  echo -e "[profile eb-cli]\naws_access_key_id = ${AWS_ACCESS_KEY_ID}\naws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}\n\n[default]\noutput = json\nregion = ${AWS_DEFAULT_REGION}" > /root/.aws/config \
  && chmod 600 /root/.aws/config;
fi

export export PATH=$PATH:/root/.local/bin

exec "$@"

