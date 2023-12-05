FROM docker.io/alpine:latest

LABEL maintainer="pvn@novarese.net"
LABEL name="hints-test"
LABEL org.opencontainers.image.title="hints-test"
LABEL org.opencontainers.image.description="Simple image to test hints file with anchore enterprise"

HEALTHCHECK --timeout=10s CMD /bin/true || exit 1

COPY anchore_hints.json /

USER nobody
ENTRYPOINT /bin/false
