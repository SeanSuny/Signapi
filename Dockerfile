FROM alpine:latest

ENV PATH=/usr/local/bin:$PATH LANG=C.UTF-8

EXPOSE 17840

WORKDIR /app

COPY ./*.sh /app

RUN set -eux \
&& apk add --update --no-cache --virtual .build-deps py3-pip \
&& apk add --no-cache tzdata git npm python3 \
&& pip install flask --no-cache-dir \
&& rm -rf /var/cache/apk/* \
&& apk del --no-network .build-deps \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "Asia/Shanghai" > /etc/timezone \
&& npm install -g pm2@latest \
&& mv /app/*.sh /usr/local/bin \
&& chmod +x /usr/local/bin/*.sh

ENTRYPOINT ["entrypoint.sh"]
