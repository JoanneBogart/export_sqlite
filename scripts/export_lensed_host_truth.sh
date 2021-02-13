#!/bin/sh
export TRUTH_SRC_DIR=$SHARED/DC2-prod/Run3.1i/truth
export SRC_DIR=${TRUTH_SRC_DIR}/lensed_hosttruth
export DEST_DIR=${SCRATCH}/Run3.1i_truth/lensed_hosttruth

#  truth_summary
SRC_FILE=${SRC_DIR}/lensed_host_truth_cat.db
sqlite3 -header -csv ${SRC_FILE} "select * from truth_summary;" > ${DEST_DIR}/lensed_host_truth_summary.csv
