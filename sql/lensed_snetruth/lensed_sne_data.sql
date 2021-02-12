\copy lensed_sne_truth.truth_summary (id, host_galaxy, ra, dec, redshift, is_variable, is_pointsource, flux_u, flux_g, flux_r, flux_i, flux_z, flux_y, flux_u_noMW, flux_g_noMW, flux_r_noMW, flux_i_noMW, flux_z_noMW, flux_y_noMW) from '/global/cscratch1/sd/jrbogart/Run3.1i_truth/lensed_snetruth/lensed_sne_truth_summary.csv' with (FORMAT 'csv', header);

\copy lensed_sne_truth.lensed_sn_variability_truth (id, obsHistID, MJD, bandpass, delta_flux, num_photons) from '/global/cscratch1/sd/jrbogart/Run3.1i_truth/lensed_snetruth/lensed_sn_variability_truth.csv' with (FORMAT 'csv', header);
