FROM public.ecr.aws/docker/library/node:lts-alpine3.20

WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli@3.0.0 \
    && apk update \
    && apk add git \
    && apk add bash

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

