
ARG ALPINE_VERSION=3.17

FROM alpine:$ALPINE_VERSION

RUN apk --no-cache add dnsmasq

COPY healthcheck.sh .
RUN chmod +x /healthcheck.sh

EXPOSE 53/udp 

HEALTHCHECK --interval=60s --timeout=10s CMD /healthcheck.sh

ENTRYPOINT ["/bin/dnsmasq"]
CMD ["--keep-in-foreground"]