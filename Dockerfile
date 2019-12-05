FROM golang:alpine AS builder

WORKDIR /go/src/app

RUN set -ex; \
	apk add --no-cache \
		git \
		build-base \
	; \
  go get -v github.com/Sean-Der/fail2rest; \
  go install -v github.com/Sean-Der/fail2rest;

FROM alpine:latest

LABEL maintainer="Meik Minks <mminks@inoxio.de>"

EXPOSE 5000

VOLUME /srv/fail2rest/ /var/run/fail2ban/

COPY --from=builder	/root/go/bin/fail2rest /usr/bin/fail2rest
COPY docker-entrypoint.sh /entrypoint.sh

RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
