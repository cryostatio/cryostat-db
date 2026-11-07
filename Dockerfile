FROM quay.io/sclorg/postgresql-16-c9s:20260916@sha256:8cfb29c886b54dd2c535e24896dffe45ff47a3006b9e880ef864415683f1daed

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/
