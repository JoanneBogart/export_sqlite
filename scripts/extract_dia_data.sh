#!/bin/sh
export  SRC_FILE=${SCRATCH}/desc/dia_db/dia_visits_matched.sqlite
export  DEST_DIR=${SCRATCH}/desc/dia_db

if [ -z "${1}" ]; then
   echo "Required argument must be one of"
   echo "      diasrc     (for table diasrc_cat)"
   echo "      dia_dets   (for table processed dia_dets)"
   echo "      records    (for table processed_records)"
   echo "      truthsn    (for table truthsn_cat)"
   return 0
fi

case "${1}" in
    diasrc)
	table=diasrc_cat
	;;
    dia_dets)
	table=processed_dia_dets
	;;
    records)
	table=processed_records
	;;
    truthsn)
	table=truthsn_cat
	;;
    *)
	echo "Unknown value for required argument: ${1}"
	echo "Recognized values are:  diasrc   dia_dets   records  truthsn"
	return 0
	;;
esac


#  Has truth_summary and agn_auxiliary_info tables
DEST_FILE=${DEST_DIR}/${table}.csv

sqlite3 -header -csv ${SRC_FILE} "select * from ${table};" > ${DEST_FILE}
echo Did sqlite3 -header -csv ${SRC_FILE} "select * from ${table};"
echo with output redirected to  ${DEST_FILE}
