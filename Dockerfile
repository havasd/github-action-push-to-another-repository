FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git git-lfs openssh-client && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
