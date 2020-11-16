export OBS_DIR=/global/projecta/projectdirs/lsst/groups/SSim/DC2
export OBS_FNAME=minion_1016_desc_dithered_v4
echo Input is ${OBS_DIR}/${OBS_FNAME}.db
#sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Session;" > ${SCRATCH}/obs_csv/Session.csv

sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Config;" > ${SCRATCH}/obs_csv/Config.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Field;" > ${SCRATCH}/obs_csv/Field.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from ObsHistory;" > ${SCRATCH}/obs_csv/ObsHistory.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Proposal;" > ${SCRATCH}/obs_csv/Proposal.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from SeqHistory;" > ${SCRATCH}/obs_csv/SeqHistory.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from SlewHistory;" > ${SCRATCH}/obs_csv/SlewHistory.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from SlewActivities;" > ${SCRATCH}/obs_csv/SlewActivities.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from SlewState;" > ${SCRATCH}/obs_csv/SlewState.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from SlewMaxSpeeds;" > ${SCRATCH}/obs_csv/SlewMaxSpeeds.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from TimeHistory;" > ${SCRATCH}/obs_csv/TimeHistory.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from ObsHistory_Proposal;" > ${SCRATCH}/obs_csv/ObsHistory_Proposal.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Cloud;" > ${SCRATCH}/obs_csv/Cloud.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Seeing;" > ${SCRATCH}/obs_csv/Seeing.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Log;" > ${SCRATCH}/obs_csv/Log.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Config_File;" > ${SCRATCH}/obs_csv/Config_File.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Proposal_Field;" > ${SCRATCH}/obs_csv/Proposal_Field.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from MissedHistory;" > ${SCRATCH}/obs_csv/MissedHistory.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from SeqHistory_MissedHistory;" > ${SCRATCH}/obs_csv/SeqHistory_MissedHistory.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from SeqHistory_ObsHistory;" > ${SCRATCH}/obs_csv/SeqHistory_ObsHistory.csv
sqlite3 -header -csv ${OBS_DIR}/${OBS_FNAME}.db "select * from Summary;" > ${SCRATCH}/obs_csv/Summary.csv
