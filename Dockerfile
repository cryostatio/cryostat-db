FROM quay.io/sclorg/postgresql-16-c9s:20261111@sha256:87e1255d296e4eb62c0b4b76ca2634a7ea03bb6f3d52906619f91b9c9b1b87fd

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/
