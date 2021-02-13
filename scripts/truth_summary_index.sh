#!/bin/bash

# Create indexes on id, coord
SCHEMA=${1}
psql $DBADMIN -c "CREATE UNIQUE INDEX  ON ${SCHEMA}.truth_summary (id);"
psql $DBADMIN -c "CREATE INDEX  ON ${SCHEMA}.truth_summary (coord);"


