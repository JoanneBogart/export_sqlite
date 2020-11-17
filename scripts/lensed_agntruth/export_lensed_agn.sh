TRUTH_TYPE=lensed_agntruth
export SRC_DIR=/global/cfs/cdirs/lsst/shared/DC2-prod/Run3.1i/truth/${TRUTH_TYPE}
export OUT_DIR=${SCRATCH}/Run3.1i_truth/${TRUTH_TYPE}

sqlite3 -header -csv ${SRC_DIR}/lensed_agn_truth_cat.db "select * from truth_summary;" > ${OUT_DIR}/truth_summary.csv

sqlite3 -header -csv ${SRC_DIR}/lensed_agn_variability_truth_cat.db "select * from lensed_agn_variability_truth;" > ${OUT_DIR}/lensed_agn_variability_truth.csv

