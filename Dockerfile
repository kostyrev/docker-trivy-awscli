FROM docker:latest

ENV TRIVY_VERSION 0.23.0

RUN apk add --quiet --no-cache --no-progress --update python3 python3-dev py-pip build-base curl git && pip install --quiet awscli && rm -rf /var/cache/apk/*

RUN curl -sSL -o trivy-gitlab.tpl https://github.com/aquasecurity/trivy/raw/v${TRIVY_VERSION}/contrib/gitlab.tpl

RUN set -ex \
    && curl -sSL https://github.com/aquasecurity/trivy/releases/download/v${TRIVY_VERSION}/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz | tar xz \
    && mv trivy /usr/local/bin/trivy
