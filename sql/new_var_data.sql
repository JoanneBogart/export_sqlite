
\copy lensed_sne_truth.lensed_sn_variability_truth_double (id, obsHistID, MJD, bandpass, delta_flux, num_photons) from '/global/cscratch1/sd/jrbogart/Run3.1i_truth/lensed_snetruth/lensed_sn_variability_truth.csv' with (FORMAT 'csv', header);

\copy lensed_agn_truth.lensed_agn_variability_truth_double (id, obsHistID, MJD, bandpass, delta_flux, num_photons) from '/global/cscratch1/sd/jrbogart/truth_sqlite/fixed/lensed_agn_variability_truth.csv' with (FORMAT 'csv', header)

\copy agn_truth.agn_variability_truth_double (id, obsHistID, MJD, bandpass, delta_flux, num_photons) from '/global/cscratch1/sd/jrbogart/truth_sqlite/fixed/agn_variability_truth.csv' with (FORMAT 'csv', header);

\copy sne_truth.sn_variability_truth_double (id, obshistid, mjd, bandpass, delta_flux) from '/global/cscratch1/sd/jrbogart/truth_sqlite/fixed/sn_variability_truth.csv' with (FORMAT 'csv', header)



