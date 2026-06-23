FROM quay.io/sclorg/postgresql-16-c9s:20260527@sha256:97a137a996babb4f060cf9ac5478760aefcf033e1db224c4b8bfd87d1d10c110

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/
