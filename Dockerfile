FROM amazonlinux:latest

MAINTAINER Mbanq <dev@mbanq.com>

RUN set -eux; \
    yum -y update -q; \
    yum -y -q install curl tar gzip python-pip wget gzip jq file; \
    pip -q install awscli; \
    curl -sL https://rpm.nodesource.com/setup_14.x | bash -;\
    amazon-linux-extras enable python3.8; \
    yum -q -y install python3.8 nodejs
