FROM quay.io/sclorg/postgresql-16-c9s:20261118@sha256:56a437f04fbd3726879dbebaf9d751c58b7c41962b326e1b3352f515bf9f1892

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/
