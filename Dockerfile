FROM amazonlinux:latest

MAINTAINER Mbanq <dev@mbanq.com>

RUN set -eux; \
    yum -y update -q; \
    yum -y -q install \
    curl \
    tar \
    gzip \
    python-pip \
    wget \
    gzip \
    jq \
    file \
    git \
    openssh-client; \
    pip install -q awscli; \
    curl -sL https://rpm.nodesource.com/setup_14.x | bash -;\
    amazon-linux-extras install epel -y; \
    amazon-linux-extras enable python3.8; \
    yum install -q -y \
    python3.8 \
    nodejs \
    ansible; \
    yum clean all && rm -rf /var/cache/yum
