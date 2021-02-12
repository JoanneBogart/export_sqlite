#!/bin/sh
export TRUTH_SRC_DIR=$SHARED/DC2-prod/Run3.1i/truth
export SRC_DIR=${TRUTH_SRC_DIR}/lensed_agntruth
export DEST_DIR=${SCRATCH}/Run3.1i_truth/lensed_agntruth

#  truth_summary
SRC_FILE=${SRC_DIR}/lensed_agn_truth_cat.db
sqlite3 -header -csv -quote ${SRC_FILE} "select * from truth_summary;" > ${DEST_DIR}/lensed_agn_truth_summary.csv

# variability
SRC_FILE=${SRC_DIR}/lensed_agn_variability_truth_cat.db
sqlite3 -header -csv -quote ${SRC_FILE} "select * from lensed_agn_variability_truth;" > ${DEST_DIR}/lensed_agn_variability_truth.csv
