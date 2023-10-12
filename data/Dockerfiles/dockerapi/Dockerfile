FROM alpine:3.17

LABEL maintainer "Zyner <contact@zyner.net>"

WORKDIR /app

RUN apk add --update --no-cache python3 \
  py3-pip \
  openssl \
  tzdata \
  py3-psutil \
&& pip3 install --upgrade pip \
  fastapi \
  uvicorn \
  aiodocker \
  docker \
  aioredis 
RUN mkdir /app/modules

COPY docker-entrypoint.sh /app/
COPY main.py /app/main.py
COPY modules/ /app/modules/

ENTRYPOINT ["/bin/sh", "/app/docker-entrypoint.sh"]
CMD exec python main.py
