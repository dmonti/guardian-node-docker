FROM ubuntu:latest

ENV GUARDIAN_PRIVATE_KEY=
ENV LOOP_INTERVAL_MS=3600000

RUN apt update

COPY guardian-cli-linux /opt/hychain/guardian-cli-linux
RUN chmod +x /opt/hychain/guardian-cli-linux

COPY validation-engine /opt/hychain/validation-engine
RUN chmod +x /opt/hychain/validation-engine/jit
RUN chmod +x /opt/hychain/validation-engine/replay.wasm

WORKDIR /opt/hychain

ENTRYPOINT /opt/hychain/guardian-cli-linux guardian run $GUARDIAN_PRIVATE_KEY --loop-interval-ms $LOOP_INTERVAL_MS