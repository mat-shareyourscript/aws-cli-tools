FROM alpine:3.10

LABEL org.label-schema.name="aws-cli-tools" \
      org.label-schema.url="https://hub.docker.com/r/matshareyourscript/aws-cli-tools/" \
      org.label-schema.vcs-url="https://github.com/mat-shareyourscript/aws-cli-tools"

# Note: Latest version of AWS CLI may be found at:
# https://github.com/aws/aws-cli/releases
ENV AWS_CLI_VERSION="1.19.43"
# Note: Latest version of AWS EB CLI may found at:
# https://pypi.org/project/awsebcli/#history
ENV AWS_EB_CLI_VERSION="3.19.4"


COPY docker-entrypoint.sh /usr/local/bin/

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
    && pip3 install --upgrade --no-cache-dir awsebcli==${AWS_EB_CLI_VERSION} \
    && apk --purge del \
         py3-pip \
         python3-dev \
         build-base \
    && rm -rf /var/cache/apk/* \
    && chmod 755 /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["/bin/bash"]

