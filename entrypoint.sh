#!/bin/sh

set -e

ln -s /root/.local/bin/* /usr/local/bin/

# Configuration of EB environment (like eb init result)
if [ -f ".elasticbeanstalk/config.yml" ]; then
  mkdir -p ~/.elasticbeanstalk && chmod 750 ~/.elasticbeanstalk
  cp .elasticbeanstalk/config.yml ~/.elasticbeanstalk/
fi

