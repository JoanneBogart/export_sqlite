CREATE INDEX ix_processed_dia_dets_level_0 ON dia_visits_matched.processed_dia_dets ("level_0");

CREATE INDEX ix_processed_records_DBid ON dia_visits_matched.processed_records ("DBid");

CREATE INDEX ix_diasrc_cat_index ON dia_visits_matched.diasrc_cat ("index");

CREATE INDEX ix_truthsn_cat_index ON dia_visits_matched.truthsn_cat ("index");
CREATE INDEX truthsncat_id ON dia_visits_matched.truthsn_cat (id);
CREATE INDEX idx_truthsncat_inccd_id ON dia_visits_matched.truthsn_cat (in_ccd, id);
