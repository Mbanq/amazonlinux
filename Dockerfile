FROM amazonlinux:latest

MAINTAINER Mbanq <dev@mbanq.com>

RUN set -eux; \
    yum -y update -q; \
    yum -y -q install curl tar gzip python-pip wget gzip jq; \
    pip -q install awscli
