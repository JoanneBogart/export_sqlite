#!/bin/sh
export TRUTH_SRC_DIR=$SHARED/DC2-prod/Run3.1i/truth
export  SRC_DIR=${TRUTH_SRC_DIR}/agntruth
export  DEST_DIR=${SCRATCH}/Run3.1i_truth/agntruth

#  Has truth_summary and agn_auxiliary_info tables
SRC_FILE=${SRC_DIR}/agn_truth_cat.db
sqlite3 -header -csv -quote ${SRC_FILE} "select * from truth_summary;" > ${DEST_DIR}/agn_truth_summary.csv

sqlite3 -header -csv -quote ${SRC_FILE} "select * from agn_auxiliary_info;" > ${DEST_DIR}/agn_auxiliary_info.csv

SRC_FILE=${SRC_DIR}/agn_variability_truth_cat.db
sqlite3 -header -csv -quote ${SRC_FILE} "select * from agn_variability_truth;" > ${DEST_DIR}/agn_variability_truth.csv
