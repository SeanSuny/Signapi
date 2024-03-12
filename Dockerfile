FROM alpine:latest

WORKDIR /jdsign

COPY ./jdsign /jdsign

ENV TZ=Asia/Shanghai \
    LANG=zh_CN.UTF-8

RUN apk add tzdata alpine-conf && \
    /sbin/setup-timezone -z Asia/Shanghai && \
    apk del alpine-conf && \
    chmod +x /jdsign/*

ENTRYPOINT ["sh", "/jdsign/sign.sh"]