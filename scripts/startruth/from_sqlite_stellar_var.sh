export DB_INPUT=/global/cscratch1/sd/descim/star_truth_test/star_variability_truth.db
echo Input is $DB_INPUT
sqlite3 -header -csv ${DB_INPUT} "select * from stellar_variability_truth;" > stellar_var.csv
