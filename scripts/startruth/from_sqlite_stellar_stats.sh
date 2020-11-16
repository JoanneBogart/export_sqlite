export DB_INPUT=/global/cscratch1/sd/descim/star_truth_test/star_lc_stats_trimmed.db
echo Input is $DB_INPUT
sqlite3 -header -csv ${DB_INPUT} "select * from stellar_variability;" > $SCRATCH/star_truth_pg/stellar_var_stats.csv
