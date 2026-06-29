FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl ca-certificates git nodejs npm \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://github.com/anomalyco/opencode/releases/download/v1.17.11/opencode-linux-x64.tar.gz \
    -o /tmp/opencode.tar.gz \
    && tar -xzf /tmp/opencode.tar.gz -C /usr/local/bin \
    && rm /tmp/opencode.tar.gz \
    && chmod +x /usr/local/bin/opencode

WORKDIR /workspace
VOLUME /workspace

EXPOSE 4096

ENV OPENCODE_SERVER_HOSTNAME=0.0.0.0
ENV OPENCODE_SERVER_PORT=4096

CMD ["opencode", "web", "--hostname", "0.0.0.0", "--port", "4096"]
