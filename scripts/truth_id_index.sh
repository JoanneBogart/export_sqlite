#!/bin/bash

# Create index on id only
if [ -z "$1" ]; then
    echo truth_var_index schema-name table-name
    exit 0
fi
if [ -z "$2" ]; then
    echo two arguments are required:
    echo truth_var_index schema-name table-name
    exit 0
fi

SCHEMA=${1}
TABLE=${2}
psql $DBADMIN -c "CREATE INDEX  ON ${SCHEMA}.${TABLE} (id);"



