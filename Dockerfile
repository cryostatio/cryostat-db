<<<<<<< HEAD
FROM quay.io/sclorg/postgresql-16-c9s:20250820
=======
FROM quay.io/sclorg/postgresql-16-c9s:20250917
>>>>>>> 9c2a575 (chore(deps): bump sclorg/postgresql-16-c9s from 20250912 to 20250917 (#113))

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/
