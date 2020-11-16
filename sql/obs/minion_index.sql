-- CREATE INDEX s_host_user_date_idx ON
--  minion_test.Session(sessionUser, sessionHost, sessionDate);

CREATE INDEX fk_config_session_idx ON Config(Session_sessionID);

CREATE INDEX oh_field_filter_idx ON ObsHistory(filter);
CREATE INDEX fk_ObsHistory_Session_idx ON ObsHistory(Session_sessionID);
CREATE INDEX fk_ObsHistory_field_idx ON ObsHistory(Field_fieldID);

CREATE INDEX fk_Proposal_Session_idx ON Proposal(Session_sessionID);

CREATE INDEX fk_SeqHistory_Field_idx ON SeqHistory(Field_fieldID);
CREATE INDEX fk_SeqHistory_Session_idx ON SeqHistory(Session_sessionID);
CREATE INDEX fk_SeqHistory_Proposal_idx ON SeqHistory(Proposal_propID);

CREATE INDEX fk_SlewHistory_ObsHistory_idx ON
  SlewHistory(ObsHistory_obsHistID, ObsHistory_Session_sessionID);

CREATE INDEX fk_SlewActivities_SlewHistory_idx ON
  SlewActivities(SlewHistory_slewID);

CREATE INDEX fk_SlewState_SlewHistory_idx ON SlewState(SlewHistory_slewID);

CREATE INDEX fk_SlewMaxSpeeds_SlewHistory_idx ON
  SlewMaxSpeeds(SlewHistory_slewID);

CREATE INDEX th_event_idx ON TimeHistory(event);
CREATE INDEX fk_TimeHistory_Session_idx ON TimeHistory(Session_sessionID);

CREATE INDEX fk_ObsHistory_Proposal_ObsHistory_idx ON
  ObsHistory_Proposal(ObsHistory_obsHistID, ObsHistory_Session_sessionID);

CREATE INDEX fk_Log_Session_idx ON Log(Session_sessionID);

CREATE INDEX fk_Config_File_Session_idx ON Config_File(Session_sessionID);

CREATE INDEX fk_Proposal_Field_Session_idx ON Proposal_Field(Session_sessionID);
CREATE INDEX fk_Proposal_Field_Proposal_idx ON Proposal_Field(Proposal_propID);
CREATE INDEX fk_Proposal_Field_Field_idx ON Proposal_Field(Field_fieldID);

CREATE INDEX fk_SeqHistory_ObsHistory_SeqHistory_idx ON
  SeqHistory_ObsHistory(SeqHistory_sequenceID);
CREATE INDEX fk_SeqHistory_ObsHistory_ObsHistory_idx ON
  SeqHistory_ObsHistory(ObsHistory_obsHistID, ObsHistory_Session_sessionID);

CREATE INDEX mh_field_filter_idx ON MissedHistory(filter);
CREATE INDEX fk_MissedHistory_Session_idx ON MissedHistory(Session_sessionID);
CREATE INDEX fk_MissedHistory_Field_idx ON MissedHistory(Field_fieldID);

CREATE INDEX fk_SeqHistory_MissedHistory_SeqHistory_idx ON
    SeqHistory_MissedHistory(SeqHistory_sequenceID);
CREATE INDEX fk_SeqHistory_MissedHistory_ObsHistory_idx ON
  SeqHistory_MissedHistory(MissedHistory_missedHistID,
                           MissedHistory_Session_sessionID);

CREATE INDEX fieldID_idx ON Summary(fieldID);
CREATE INDEX expMJD_idx ON Summary(expMJD);
CREATE INDEX filter_idx ON Summary(filter);
CREATE INDEX fieldRA_idx ON Summary(fieldRA);
CREATE INDEX fieldDec_idx ON Summary(fieldDec);
CREATE INDEX fieldRADec_idx ON Summary(fieldRA, fieldDec);
CREATE INDEX night_idx ON Summary(night);
CREATE INDEX propID_idx ON Summary(propID);
CREATE INDEX ditheredRA_idx ON Summary(ditheredRA);
CREATE INDEX ditheredDec_idx ON Summary(ditheredDec);
CREATE INDEX ditheredRADec_idx ON Summary(ditheredRA, ditheredDec);
CREATE INDEX filter_propID_idx ON Summary(filter, propID);
CREATE INDEX obshistid_idx ON Summary(obsHistID);

-- primary key indexes
CREATE UNIQUE INDEX obsHistID_pk on minion_test.ObsHistory(obsHistID);
CREATE UNIQUE INDEX fieldID_pk on minion_test.Field(fieldID);
CREATE UNIQUE INDEX configID_pk on minion_test.Config(configID);
CREATE UNIQUE INDEX sequenceID_pk on minion_test.SeqHistory(sequenceID);
CREATE UNIQUE INDEX slewID_pk on minion_test.SlewHistory(sequenceID);
CREATE UNIQUE INDEX slewActivityID_pk on minion_test.SlewActivities(slewActivityID);
CREATE UNIQUE INDEX slewIniStatID_pk on minion_test.SlewState(slewIniStatID);
CREATE UNIQUE INDEX slewMaxSpeedID_pk on minion_test.SlewMaxPeeds(slewMaxSpeedID);
CREATE UNIQUE INDEX timeHistID_pk on minion_test.TimeHistory(timeHistID);
CREATE UNIQUE INDEX obsHistory_propID_pk on minion_test.ObsHistory_Propoasl(obsHistory_propID);
CREATE UNIQUE INDEX cloudID_pk on minion_test.Cloud(cloudID);
CREATE UNIQUE INDEX seeingID_pk on minion_test.Seeing(seeingID);
CREATE UNIQUE INDEX proposal_field_id_pk on minion_test.Proposal_Field(proposal_field_id);
CREATE UNIQUE INDEX seqhistory_obsHistID_pk on minion_test.SeqHistory_ObsHistory(seqhistory_obsHistID);
CREATE UNIQUE INDEX missedHistID_pk on minion_test.MissedHistory(missedHistID);
CREATE UNIQUE INDEX seqhistory_missedHistID_pk on minion_test.SeqHistory_MissedHistory(seqhistory_missedHistID);

