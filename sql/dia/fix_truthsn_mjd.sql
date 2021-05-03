-- SQLite source had only single precision for truthsn_cat so PostgreSQL table was also wrong
-- This command updates from sn truth table, which had been fixed already

update dia_visits_matched.truthsn_cat as DIA set mjd = TR.mjd from sne_truth.sn_variability_truth as TR where TR.obshistid = DIA.obshistid and TR.id = DIA.id;
