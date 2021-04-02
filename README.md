# AWS CLI tools

[![](https://images.microbadger.com/badges/image/matshareyourscript/aws-cli-tools.svg)](https://microbadger.com/images/matshareyourscript/aws-cli-tools "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/matshareyourscript/aws-cli-tools.svg)](https://microbadger.com/images/matshareyourscript/aws-cli-tools "Get your own version badge on microbadger.com")
[![Build Status](https://travis-ci.org/mat-shareyourscript/aws-cli-tools.svg?branch=master)](https://travis-ci.org/mat-shareyourscript/aws-cli-tools)
[![Docker Stars](https://img.shields.io/docker/stars/matshareyourscript/aws-cli-tools.svg?style=flat)](https://hub.docker.com/r/matshareyourscript/aws-cli-tools/)
[![Docker Automated build](https://img.shields.io/docker/automated/matshareyourscript/aws-cli-tools.svg?style=flat)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/matshareyourscript/aws-cli-tools.svg)]()

## Tags

* [0.0.1](http://github.com/mat-shareyourscript/aws-cli-tools/releases/tag/0.0.1) - aws cli v1.16.207, aws eb cli v3.15.2, alpine 3.10
* [0.0.2](http://github.com/mat-shareyourscript/aws-cli-tools/releases/tag/0.0.2) - aws cli v1.17.9, aws eb cli v3.17.0, alpine 3.10
* [0.0.3](http://github.com/mat-shareyourscript/aws-cli-tools/releases/tag/0.0.3) - aws cli v1.19.43, aws eb cli v3.19.4, alpine 3.10

## How to use this image

### Usage

To set AWS environment:
```
docker run --rm -e "AWS_ACCESS_KEY_ID=1234567890" -e "AWS_SECRET_ACCESS_KEY=azertyuiop" -e "AWS_DEFAULT_REGION=eu-west-1" matshareyourscript/aws-cli-tools
```

#### Elastic Beanstalk usage

To connect to EB environment, you have to provide a `.elasticbeanstalk/config.yml` at root of your repository for example.

```
docker run --rm -e "AWS_ACCESS_KEY_ID=1234567890" -e "AWS_SECRET_ACCESS_KEY=azertyuiop" -e "AWS_DEFAULT_REGION=eu-west-1" matshareyourscript/aws-cli-tools eb health __EB_ENVIRONMENT_NAME__
```

-----------

