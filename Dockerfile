FROM node:13-alpine
ENV VERSION 0.111.0

EXPOSE 80
RUN apk add --no-cache git openssl py-pygments libc6-compat g++ curl 
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz | tar -xz  \
    && cp hugo /usr/bin/hugo \
    && apk del curl \
    && hugo version
WORKDIR /app

#COPY assets assets
COPY content content
#COPY i18n i18n
COPY layouts layouts
COPY static static
#COPY package.json package.json
#COPY postcss.config.js postcss.config.js
COPY config.toml config.toml
COPY themes themes

RUN yarn

CMD [ "hugo", "server", "--bind", "0.0.0.0","-p", "80" ]