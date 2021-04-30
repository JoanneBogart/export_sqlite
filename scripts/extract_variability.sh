#!/bin/sh
export  SRC_DIR=${SCRATCH}/truth_sqlite/fixed
export  DEST_DIR=${SCRATCH}/truth_sqlite/fixed
export  EXT='db_new'

case "${1}" in
    agn)
	table=agn_variability_truth
	infilename=agn_variability_truth_cat
	outfilename=$table
	;;
    star)
	table=stellar_variability_truth
	infilename=star_variability_truth
	outfilename=$infilename
	;;
    sne)
	table=sn_variability_truth
	infilename=sum_variable-31mar
	outfilename=$table
	;;
    lensed_agn)
	table=lensed_agn_variability_truth
	infilename=lensed_agn_variability_truth_cat
	outfilename=$table
	;;
    lensed_sne)
	table=lensed_sn_variability_truth
	infilename=lensed_sne_truth_cat
	outfilename=$table
	;;
    *)
	echo "unknown case ${1}"
	return 1
esac


#  Has truth_summary and agn_auxiliary_info tables
SRC_FILE=${SRC_DIR}/${infilename}.db_new
DEST_FILE=${DEST_DIR}/${outfilename}.csv

#echo Source file: ${SRC_FILE}
#echo Dest file:  ${DEST_FILE}

sqlite3 -header -csv ${SRC_FILE} "select * from ${table};" > ${DEST_FILE}
echo Did sqlite3 -header -csv ${SRC_FILE} "select * from ${table};"
echo with output redirected to  ${DEST_FILE}



#SRC_FILE=${SRC_DIR}/agn_variability_truth_cat.db
#sqlite3 -header -csv  ${SRC_FILE} "select * from agn_variability_truth;" > ${DEST_DIR}/agn_variability_truth.csv
