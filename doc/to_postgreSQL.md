# Converting sqlite Table to Equivalent PostgreSQL

## Inputs
* path to sqlite file
* table name
* PostgreSQL schema name
* PostgreSQL table name (defaults to sqlite tablename)

## Creating the file

1. From sqlite table schema make equivalent .sql file to create PostgreSQL table.  For now, do this by hand to ensure type names are correct. If original table has ra,dec columns, add a column of type `earth` to the PostgreSQL schema. All of this could perhaps be automated but if so review output.

2. Create shell script to extract the data. It should contain environment variable definitions for input and output directories and one or more lines like

```bash
sqlite -header -csv ${SRC_DIR}/sqlite_filename.db \
"select * from in-table-name;" > ${OUT_DIR}/in-table-name.csv
```
3. Create .sql file to ingest the data from the created .csv file. For each table, need a command something like
```
\copy pg-schema-name.pg-table-name (list-of-column-names) from 'csv-file-path' with (FORMAT 'csv', header)
```
4. Run the shell script and execute the .sql files from psql (or add lines to the shell script to invoke psql with the files as input)

5. For tables with ra, dec columns (for truth tables, only truth_summary) update any values of type `earth`.

6. Create indices as appropriate.

## Validation
Output should be identical to input except for differences in floating point numbers within tolerance.

* Confirm count is identical
* For a small sample check (handful) that floating point value differences are within tolerance and all other values are identical
* For tables with ra,dec compare plots
* For other numerical quantities - not necessarily all, but a selection - compare histograms
