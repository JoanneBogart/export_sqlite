\copy dia_visits_matched.processed_records ("DBid",  "len_diasrccat", "len_truthcat", "processed") from  '/global/cscratch1/sd/jrbogart/desc/dia_db/processed_records.csv' with (FORMAT 'csv', header)
