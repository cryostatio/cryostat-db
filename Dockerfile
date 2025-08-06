<<<<<<< HEAD
FROM quay.io/sclorg/postgresql-16-c9s:20250528
=======
FROM quay.io/sclorg/postgresql-16-c9s:20250730
>>>>>>> 981843f (chore(deps): bump sclorg/postgresql-16-c9s from 20250723 to 20250730 (#106))

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/
