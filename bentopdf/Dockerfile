ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.23
FROM ${BUILD_FROM}

# hadolint ignore=DL3018
RUN apk add --no-cache nginx

COPY --from=ghcr.io/alam00000/bentopdf-simple:2.5.0 /usr/share/nginx/html /usr/share/nginx/html
COPY --from=ghcr.io/alam00000/bentopdf-simple:2.5.0 /etc/nginx/nginx.conf /etc/nginx/nginx.conf

COPY run.sh /run.sh
COPY rootfs /

RUN chmod +x /run.sh \
    && chmod +x /etc/s6-overlay/s6-rc.d/bentopdf/run \
    && chmod +x /etc/s6-overlay/s6-rc.d/bentopdf/finish

ENTRYPOINT ["/init"]
