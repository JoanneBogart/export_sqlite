CREATE SCHEMA IF NOT EXISTS agn_truth;
CREATE TABLE agn_truth.agn_variability_truth
                  (id TEXT, obsHistID INTEGER, MJD DOUBLE PRECISION,
		  bandpass TEXT, delta_flux REAL, num_photons REAL);
