FROM alpine/git:v2.34.2

RUN wget https://github.com/cli/cli/releases/download/v2.10.1/gh_2.10.1_linux_amd64.tar.gz \
    && tar -xvf gh_2.10.1_linux_amd64.tar.gz \
    && chmod +x gh_2.10.1_linux_amd64/bin/gh \
    && mv gh_2.10.1_linux_amd64/bin/gh /usr/local/bin/ \
    && rm -rf gh_2.10.1_linux_amd64.tar.gz gh_2.10.1_linux_amd64
