FROM alpine/git:v2.34.2

ARG VERSION=2.10.1
RUN wget -O - https://github.com/cli/cli/releases/download/v${VERSION}/gh_${VERSION}_linux_amd64.tar.gz \
    | tar zxvf - gh_${VERSION}_linux_amd64/bin/gh -C /usr/local/bin --strip-components=2
