FROM alpine:latest
LABEL maintainer="d.kramer@soton.ac.uk"

RUN apk add --no-cache openssh

ENV PUBLIC_DOMAIN "" 
ENV TARGET_HOSTNAME "localhost"
ENV TARGET_PORT "80"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]