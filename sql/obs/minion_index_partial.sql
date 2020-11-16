CREATE INDEX fieldID_idx ON minion_test.Summary(fieldID);
CREATE INDEX expMJD_idx ON minion_test.Summary(expMJD);
CREATE INDEX filter_idx ON minion_test.Summary(filter);
-- CREATE INDEX night_idx ON Summary(night);   not for now
-- CREATE INDEX filter_propID_idx ON Summary(filter, propID);  not for now
CREATE INDEX obshistid_idx ON minion_test.Summary(obsHistID);
CREATE INDEX descDitheredCoord_idx ON minion_test.Summary(descDitheredCoord);

-- primary key indexes
CREATE UNIQUE INDEX obsHistID_pk on minion_test.ObsHistory(obsHistID);
CREATE UNIQUE INDEX fieldID_pk on minion_test.Field(fieldID);      
CREATE UNIQUE INDEX configID_pk on minion_test.Config(configID);
CREATE UNIQUE INDEX sequenceID_pk on minion_test.SeqHistory(sequenceID);
CREATE UNIQUE INDEX slewID_pk on minion_test.SlewHistory(slewID);
CREATE UNIQUE INDEX slewActivityID_pk on minion_test.SlewActivities(slewActivityID);
CREATE UNIQUE INDEX slewIniStatID_pk on minion_test.SlewState(slewIniStatID);
CREATE UNIQUE INDEX slewMaxSpeedID_pk on minion_test.SlewMaxSpeeds(slewMaxSpeedID);
CREATE UNIQUE INDEX timeHistID_pk on minion_test.TimeHistory(timeHistID);
CREATE UNIQUE INDEX obsHistory_propID_pk on minion_test.ObsHistory_Proposal(obsHistory_propID);
CREATE UNIQUE INDEX cloudID_pk on minion_test.Cloud(cloudID);
CREATE UNIQUE INDEX seeingID_pk on minion_test.Seeing(seeingID);
CREATE UNIQUE INDEX proposal_field_id_pk on minion_test.Proposal_Field(proposal_field_id);
CREATE UNIQUE INDEX seqhistory_obsHistID_pk on minion_test.SeqHistory_ObsHistory(seqhistory_obsHistID);
CREATE UNIQUE INDEX missedHistID_pk on minion_test.MissedHistory(missedHistID);
CREATE UNIQUE INDEX seqhistory_missedHistID_pk on minion_test.SeqHistory_MissedHistory(seqhistory_missedHistID);
