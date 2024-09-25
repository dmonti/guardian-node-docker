FROM ubuntu:latest

ENV GUARDIAN_PRIVATE_KEY=
ENV LOOP_INTERVAL_MS=3600000

RUN apt update && apt -y install wget

RUN wget -O /opt/hychain https://github.com/HYCHAIN/guardian-node-software/releases/download/0.0.1/guardian-cli-linux-v0.0.1.zip
RUN unzip /opt/hychain/guardian-cli-linux-v0.0.1.zip -d /opt/hychain

RUN chmod +x /opt/hychain/guardian-cli-linux
RUN chmod +x /opt/hychain/validation-engine/jit
RUN chmod +x /opt/hychain/validation-engine/replay.wasm

WORKDIR /opt/hychain

ENTRYPOINT /opt/hychain/guardian-cli-linux guardian run $GUARDIAN_PRIVATE_KEY --loop-interval-ms $LOOP_INTERVAL_MS