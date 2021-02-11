-- Should have already directed output. Then invoke this file with
-- .read export_truth_summary.sql
.headers on
.mode csv
.mode quote
select * from truth_summary;
