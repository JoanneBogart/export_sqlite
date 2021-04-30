CREATE SCHEMA IF NOT EXISTS lensed_sne_truth;
CREATE TABLE lensed_sne_truth.truth_summary
        (id TEXT, host_galaxy BIGINT, ra DOUBLE PRECISION, dec DOUBLE PRECISION,
        redshift REAL, is_variable INTEGER, is_pointsource INTEGER,
        flux_u REAL, flux_g REAL, flux_r REAL,
        flux_i REAL, flux_z REAL, flux_y REAL,
        flux_u_noMW REAL, flux_g_noMW REAL, flux_r_noMW REAL,
        flux_i_noMW REAL, flux_z_noMW REAL, flux_y_noMW REAL,
	coord earth);

CREATE TABLE lensed_sne_truth.lensed_sn_variability_truth
                  (id TEXT, obsHistID INTEGER, MJD DOUBLE PRECISION,
		  bandpass TEXT, delta_flux REAL, num_photons REAL);
