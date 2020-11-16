-- fieldRA and fieldDec are in degrees here (but not in Summary table below!)
UPDATE  minion_test.Field set fieldCoord=public.radec_to_coord(fieldRA, fieldDec);
-- UPDATE 5292

-- in radians
update minion_test.ObsHistory set mooncoord=public.radec_to_coord(degrees(moonra), degrees(moondec));
-- UPDATE 2447931

-- in radians
update minion_test.ObsHistory set ditheredcoord=public.radec_to_coord(degrees(ditheredra), degrees(dithereddec));
-- UPDATE 2447931

-- All ra,dec pairs in Summary are in radians
UPDATE minion_test.Summary set (fieldCoord,moonCoord,ditheredCoord,descDitheredCoord) = ( public.radec_to_coord(degrees(fieldRA), degrees(fieldDec)),public.radec_to_coord(degrees(moonRA), degrees(moonDec)), public.radec_to_coord(degrees(ditheredRA), degrees(ditheredDec)),public.radec_to_coord(degrees(descDitheredRA), degrees(descDitheredDec)));
-- UPDATE 2194905

-- in radians
UPDATE  minion_test.SlewState set tCoord=public.radec_to_coord(degrees(tra), degrees(tdec));
-- UPDATE 4895862
