FROM alpine:3.10

LABEL org.label-schema.name="aws-tools" \
      org.label-schema.url="https://hub.docker.com/r/matshareyourscript/aws-tools/" \
      org.label-schema.vcs-url="https://github.com/mat-shareyourscript/aws-tools"

# Note: Latest version of AWS CLI may be found at:
# https://github.com/aws/aws-cli/
ENV AWS_CLI_VERSION="1.16.207"
# Note: Latest version of AWS EB CLI may found at:
# https://docs.aws.amazon.com/fr_fr/elasticbeanstalk/latest/relnotes/relnotes.html
ENV_AWS_EB_CLI_VERSION="3.14.7"

RUN apk add --no-cache \
      ca-certificates \
      git \
      curl \
      bash \
      python3 \
      python3-dev \
      py3-pip \
      build-base \
    && pip3 install --upgrade --no-cache-dir awscli==${AWS_CLI_VERSION} \
    && pip3 install --upgrade --no-cache-dir awsebcli=${AWS_EB_CLI_VERSION} \
    && apk --purge del \
         py3-pip \
         python3-dev \
         build-base \
    && rm -rf /var/cache/apk/*

WORKDIR /

CMD ["bash"]

