#!/bin/bash

# Update coord column, derived from ra,dec
SCHEMA=${1}
psql $DBADMIN -c "update ${SCHEMA}.truth_summary set coord=public.radec_to_coord(ra, dec);"
