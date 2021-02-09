# Converting sqlite Table to Equivalent PostgreSQL

## Inputs
* path to sqlite file
* table name
* PostgreSQL schema name
* PostgreSQL table name (defaults to sqlite tablename)

## Steps

1. Create shell script to extract the data. It should contain environment variable definitions for input and output directories and one or more lines like

```bash
sqlite -header -csv ${SRC_DIR}/sqlite_filename.db \
"select * from in-table-name;" > ${OUT_DIR}/in-table-name.csv
```
2. From sqlite table schema make equivalent .sql file to create PostgreSQL table.  For now, do this by hand to ensure type names are correct. Could be automated but if so review output.
3. Create .sql file to ingest the data from the created .csv file. For each table, need a command something like
```
\copy pg-schema-name.pg-table-name (list-of-column-names) from 'csv-file-path' with (FORMAT 'csv', header)
```
4. Run the shell script and execute the .sql files from psql (or add lines to the shell script to invoke psql with the files as input)

Alternatively, issue the commands from python, creating the PostgreSQL table first, and piping output from sqlite directly to the `\copy` command.


