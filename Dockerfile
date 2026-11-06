FROM quay.io/sclorg/postgresql-16-c9s:20251231@sha256:e6584f4a78fb981b10cadf6b289d71111b1420000dda6a66c17d915a7ec35575

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/
