# Converting sqlite Table to Equivalent PostgreSQL

## Inputs
* path to sqlite file
* table name
* PostgreSQL schema name
* PostgreSQL table name (defaults to sqlite tablename)

## Creating the file

1. From sqlite table schema make equivalent .sql file to create PostgreSQL table.  For now, do this by hand to ensure type names are correct. If original table has ra,dec columns, add a column of type `earth` to the PostgreSQL schema. All of this could perhaps be automated but if so review output.

Run it from psql.

2. Write sql script to extract the data, to be executed from inside sqlite command program. Here is one for summary_truth:

```sql
.headers on
.mode csv
.mode quote
select * from truth_summary;
```
Suppose the path to this file is  `/tool/path/extract.sql`, path to sqlite input file is `/input/path/sqlite_file.db` and path to output csv file is `/output/path/out_table.csv`. Then use it like this:
```
$ sqlite3 /input/path/sqlite_file.db
sqlite> .output /output/path/out_table.csv
sqlite> .read /tool/path/extract.sql
```
3. Create .sql file to ingest the data from the created .csv file. For each table, need a command something like
```
\copy pg-schema-name.pg-table-name (list-of-column-names) from '/output/path/out_table.csv' with csv header;
```
Run it from psql

4. For tables with ra, dec columns (for truth tables, only truth_summary) update any values of type `earth` with an sql command something like
```
update schema-name.table-name set coord=public.radec_to_coord(ra-col, dec-col);
```
e.g. for star truth
```
update star_truth.truth_summary set coord=public.radec_to_coord(ra, dec);
```
5. Create indices as appropriate.

## Validation
Output should be identical to input except for differences in floating point numbers within tolerance.

* Confirm count is identical
* For a small sample check (handful) that floating point value differences are within tolerance and all other values are identical
* For tables with ra,dec compare plots
* For other numerical quantities - not necessarily all, but a selection - compare histograms
