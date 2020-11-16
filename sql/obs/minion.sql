CREATE SCHEMA minion_test;

CREATE TABLE minion_test.Session (sessionID INTEGER PRIMARY KEY,
  sessionUser TEXT, sessionHost TEXT, sessionDate TEXT, version TEXT,
  runComment TEXT);

CREATE TABLE minion_test.Config (
  configID INTEGER NOT NULL, moduleName TEXT, paramIndex INTEGER,
  paramName TEXT, paramValue TEXT, comment TEXT, Session_sessionID INTEGER,
  nonPropID INTEGER);

CREATE TABLE minion_test.Field (fieldID INTEGER NOT NULL, fieldFov REAL,
  fieldRA DOUBLE PRECISION, fieldDec DOUBLE PRECISION, fieldCoord earth,
  fieldGL REAL, fieldGB REAL, fieldEL REAL, fieldEB REAL);

CREATE TABLE minion_test.ObsHistory (
  obsHistID INTEGER NOT NULL, Session_sessionID INTEGER, filter TEXT,
  expDate INTEGER, expMJD DOUBLE PRECISION, night INTEGER,
  visitTime DOUBLE PRECISION, visitExpTime DOUBLE PRECISION, finRank REAL,
  finSeeing REAL, transparency REAL,  airmass REAL, vSkyBright REAL,
  filtSkyBrightness REAL, rotSkyPos DOUBLE PRECISION, lst DOUBLE PRECISION,
  altitude DOUBLE PRECISION, azimuth DOUBLE PRECISION,
  dist2Moon DOUBLE PRECISION, solarElong DOUBLE PRECISION,
  moonRA DOUBLE PRECISION, moonDec DOUBLE PRECISION, moonCoord earth,
  moonAlt DOUBLE PRECISION, moonAZ DOUBLE PRECISION, moonPhase REAL,
  sunAlt DOUBLE PRECISION, sunAZ DOUBLE PRECISION, phaseAngle DOUBLE PRECISION,
  rScatter REAL, mieScatter REAL,  moonIllum REAL, moonBright REAL,
  darkBright REAL, rawSeeing REAL,  wind REAL, humidity REAL,
  fiveSigmaDepth REAL, ditheredRA DOUBLE PRECISION, ditheredDec DOUBLE PRECISION,
  ditheredCoord earth, Field_fieldID INTEGER);

CREATE TABLE minion_test.Proposal (propID INTEGER PRIMARY KEY, propConf TEXT,
  propName TEXT, objectID BIGINT, objectHost TEXT, Session_sessionID INTEGER);

CREATE TABLE minion_test.SeqHistory (
  sequenceID INTEGER NOT NULL, startDate INTEGER, expDate INTEGER,
  seqnNum INTEGER, completion DOUBLE PRECISION, reqEvents INTEGER,
  actualEvents INTEGER, endStatus INTEGER, parent_sequenceID INTEGER,
  Field_fieldID INTEGER, Session_sessionID INTEGER, Proposal_propID INTEGER);

CREATE TABLE minion_test.SlewHistory (
  slewID INTEGER NOT NULL, slewCount INTEGER, startDate DOUBLE PRECISION,
  endDate DOUBLE PRECISION, slewTime DOUBLE PRECISION, slewDist DOUBLE PRECISION,
  ObsHistory_obsHistID INTEGER, ObsHistory_Session_sessionID INTEGER);

CREATE TABLE minion_test.SlewActivities (slewActivityID INTEGER NOT NULL,
  activity TEXT, actDelay REAL, inCriticalPath TEXT, SlewHistory_slewID INTEGER);

CREATE TABLE minion_test.SlewState (
  slewIniStatID INTEGER NOT NULL, slewStateDate REAL, tra DOUBLE PRECISION,
  tdec DOUBLE PRECISION, tCoord earth,  tracking TEXT, alt DOUBLE PRECISION,
  az DOUBLE PRECISION, pa DOUBLE PRECISION, domAlt DOUBLE PRECISION,
  domAz DOUBLE PRECISION, telAlt DOUBLE PRECISION, telAz DOUBLE PRECISION,
  rotTelPos DOUBLE PRECISION, filter TEXT, state INTEGER,
  SlewHistory_slewID INTEGER);

CREATE TABLE minion_test.SlewMaxSpeeds (slewMaxSpeedID INTEGER NOT NULL,
  domAltSpd REAL, domAzSpd REAL,
  telAltSpd REAL, telAzSpd REAL, rotSpd REAL, SlewHistory_slewID INTEGER);

CREATE TABLE minion_test.TimeHistory (timeHistID INTEGER NOT NULL, date INTEGER,
  mjd DOUBLE PRECISION, night INTEGER, event INTEGER, Session_sessionID INTEGER);

CREATE TABLE minion_test.ObsHistory_Proposal (
  obsHistory_propID INTEGER PRIMARY KEY, Proposal_propID INTEGER,
  propRank REAL, ObsHistory_obsHistID INTEGER,
  ObsHistory_Session_sessionID INTEGER);

CREATE TABLE minion_test.Cloud (cloudID INTEGER NOT NULL, c_date INTEGER,
  cloud REAL);

CREATE TABLE minion_test.Seeing (seeingID INTEGER NOT NULL, s_date INTEGER,
  seeing REAL);

CREATE TABLE minion_test.Log (
  logID INTEGER PRIMARY KEY, log_name TEXT, log_value TEXT,
  Session_sessionID INTEGER);

CREATE TABLE minion_test.Config_File (
  config_fileID INTEGER PRIMARY KEY, filename TEXT, data TEXT,
  Session_sessionID INTEGER);

CREATE TABLE minion_test.Proposal_Field (
  proposal_field_id INTEGER NOT NULL, Session_sessionID INTEGER,
  Proposal_propID INTEGER, Field_fieldID INTEGER);

CREATE TABLE minion_test.SeqHistory_ObsHistory (
  seqhistory_obsHistID INTEGER NOT NULL, SeqHistory_sequenceID INTEGER,
  ObsHistory_obsHistID INTEGER, ObsHistory_Session_sessionID INTEGER);

CREATE TABLE minion_test.MissedHistory (
  missedHistID INTEGER NOT NULL, Session_sessionID INTEGER, filter TEXT,
  expDate INTEGER, expMJD DOUBLE PRECISION, night INTEGER, lst DOUBLE PRECISION,
  Field_fieldID INTEGER);

CREATE TABLE minion_test.SeqHistory_MissedHistory (
  seqhistory_missedHistID INTEGER PRIMARY KEY,
  SeqHistory_sequenceID INTEGER, MissedHistory_missedHistID INTEGER,
  MissedHistory_Session_sessionID INTEGER);

CREATE TABLE minion_test.Summary (
  obsHistID INTEGER, sessionID INTEGER, propID INTEGER, fieldID INTEGER,
  fieldRA REAL, fieldDec REAL, fieldCoord earth, filter TEXT, expDate INTEGER,
  expMJD DOUBLE PRECISION, night INTEGER, visitTime DOUBLE PRECISION,
  visitExpTime DOUBLE PRECISION, finRank REAL, FWHMeff REAL, FWHMgeom REAL,
  transparency REAL, airmass REAL, vSkyBright REAL, filtSkyBrightness REAL,
  rotSkyPos DOUBLE PRECISION, rotTelPos DOUBLE PRECISION, lst DOUBLE PRECISION,
  altitude DOUBLE PRECISION, azimuth DOUBLE PRECISION,dist2Moon DOUBLE PRECISION,
  solarElong DOUBLE PRECISION, moonRA DOUBLE PRECISION, moonDec DOUBLE PRECISION,
  moonCoord earth, moonAlt DOUBLE PRECISION, moonAZ DOUBLE PRECISION,
  moonPhase REAL, sunAlt DOUBLE PRECISION, sunAz DOUBLE PRECISION,
  phaseAngle DOUBLE PRECISION, rScatter REAL, mieScatter REAL, moonIllum REAL,
  moonBright REAL, darkBright REAL, rawSeeing REAL, wind REAL, humidity REAL,
  slewDist REAL, slewTime DOUBLE PRECISION, fiveSigmaDepth REAL,
  ditheredRA DOUBLE PRECISION, ditheredDec DOUBLE PRECISION, ditheredCoord earth,
  descDitheredDec DOUBLE PRECISION, descDitheredRA DOUBLE PRECISION,
  descDitheredCoord earth, descDitheredRotTelPos DOUBLE PRECISION);

