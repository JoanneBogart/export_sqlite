export DB_INPUT=/global/cfs/cdirs/lsst/catalogs/production-DC2_ImSim/Run2.2i/snetruth/sum_variable-31mar.db
export CSV_DIR=${SCRATCH}/sne_truth_pg
echo input is $DB_INPUT
echo output goes to $CSV_DIR
sqlite3 -header -csv ${DBINPUT} "select * from truth_summary;" > ${CSV_DIR}/truth_summary.csv
sqlite3 -header -csv ${DBINPUT} "select * from sn_variability_truth;" > ${CSV_DIR}/sn_variability_truth.csv

