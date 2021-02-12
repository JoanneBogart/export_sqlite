CREATE SCHEMA IF NOT EXISTS lensed_host_truth;
CREATE TABLE lensed_host_truth.truth_summary
        (id TEXT, host_galaxy BIGINT, ra DOUBLE PRECISION, dec DOUBLE PRECISION,
        redshift REAL, is_variable INTEGER, is_pointsource INTEGER,
        flux_u REAL, flux_g REAL, flux_r REAL,
        flux_i REAL, flux_z REAL, flux_y REAL,
        flux_u_noMW REAL, flux_g_noMW REAL, flux_r_noMW REAL,
        flux_i_noMW REAL, flux_z_noMW REAL, flux_y_noMW REAL,
	num_photons_u REAL, num_photons_g REAL, num_photons_r REAL,
	num_photons_i REAL, num_photons_z REAL, num_photons_y REAL,
	coord earth);
