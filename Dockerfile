FROM docker.io/debian:bookworm-slim

# Added TARGETARCH to differenciate between amd64 (Linux and Windows) and arm64 (Mac) when install awscliv2.zip
ARG TARGETARCH

# Install zip
RUN apt update && \
    apt install -y zip=3.0-13 && \
    rm -rf /var/lib/apt/lists/*

# Install awscli
COPY playground/aws_cli/awscliv2-${TARGETARCH}.zip .
RUN unzip awscliv2-${TARGETARCH}.zip && \
    ./aws/install && \
    rm -rf awscliv2-${TARGETARCH}.zip aws

# By default, this container does not execute anything; it simply sleeps indefinitely.
CMD ["tail", "-f", "/dev/null"]