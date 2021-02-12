#!/bin/sh
export TRUTH_SRC_DIR=$SHARED/DC2-prod/Run3.1i/truth
export SRC_DIR=${TRUTH_SRC_DIR}/lensed_snetruth
export DEST_DIR=${SCRATCH}/Run3.1i_truth/lensed_snetruth

#  truth_summary and variability are in the same file
SRC_FILE=${SRC_DIR}/lensed_sne_truth_cat.db
sqlite3 -header -csv -quote ${SRC_FILE} "select * from truth_summary;" > ${DEST_DIR}/lensed_sne_truth_summary.csv

# variability
sqlite3 -header -csv -quote ${SRC_FILE} "select * from lensed_sn_variability_truth;" > ${DEST_DIR}/lensed_sn_variability_truth.csv
