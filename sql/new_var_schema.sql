CREATE TABLE lensed_sne_truth.lensed_sn_variability_truth_double
                  (id TEXT, obsHistID INTEGER, MJD DOUBLE PRECISION,
		  bandpass TEXT, delta_flux REAL, num_photons REAL);

CREATE TABLE lensed_agn_truth.lensed_agn_variability_truth_double
                  (id TEXT, obsHistID INTEGER, MJD DOUBLE PRECISION,
		  bandpass TEXT, delta_flux REAL, num_photons REAL);

CREATE TABLE agn_truth.agn_variability_truth_double
                  (id TEXT, obsHistID INTEGER, MJD DOUBLE PRECISION,
		  bandpass TEXT, delta_flux REAL, num_photons REAL);

CREATE TABLE sne_truth.sn_variability_truth_double
                  (id TEXT, obsHistID INTEGER, MJD DOUBLE PRECISION,
		  bandpass TEXT, delta_flux REAL);

