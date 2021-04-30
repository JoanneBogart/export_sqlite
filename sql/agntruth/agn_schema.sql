CREATE SCHEMA IF NOT EXISTS agn_truth;
CREATE TABLE agn_truth.truth_summary
        (id TEXT, host_galaxy BIGINT, ra DOUBLE PRECISION, dec DOUBLE PRECISION,
        redshift REAL, is_variable INTEGER, is_pointsource INTEGER,
        flux_u REAL, flux_g REAL, flux_r REAL,
        flux_i REAL, flux_z REAL, flux_y REAL,
        flux_u_noMW REAL, flux_g_noMW REAL, flux_r_noMW REAL,
        flux_i_noMW REAL, flux_z_noMW REAL, flux_y_noMW REAL,
	coord earth);

CREATE TABLE agn_truth.agn_auxiliary_info
        (id TEXT, host_galaxy BIGINT, M_i DOUBLE PRECISION, seed BIGINT,
	tau_u DOUBLE PRECISION, tau_g DOUBLE PRECISION, tau_r DOUBLE PRECISION,
        tau_i DOUBLE PRECISION, tau_z DOUBLE PRECISION, tau_y DOUBLE PRECISION,
	sf_u DOUBLE PRECISION, sf_g DOUBLE PRECISION, sf_r DOUBLE PRECISION,
        sf_i DOUBLE PRECISION, sf_z DOUBLE PRECISION, sf_y DOUBLE PRECISION);

CREATE TABLE agn_truth.agn_variability_truth
                  (id TEXT, obsHistID INTEGER, MJD DOUBLE, bandpass TEXT,
                  delta_flux REAL, num_photons REAL);
