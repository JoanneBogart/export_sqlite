\copy lensed_agn_truth.truth_summary (id, host_galaxy, ra, dec, redshift, is_variable, is_pointsource, flux_u, flux_g, flux_r, flux_i, flux_z, flux_y, flux_u_noMW, flux_g_noMW, flux_r_noMW, flux_i_noMW, flux_z_noMW, flux_y_noMW) from '/global/cscratch1/sd/jrbogart/Run3.1i_truth/lensed_agntruth/lensed_agn_truth_summary.csv' with (FORMAT 'csv', header)

\copy lensed_agn_truth.lensed_agn_variability_truth (id, obsHistID, MJD, bandpass, delta_flux, num_photons) from '/global/cscratch1/sd/jrbogart/Run3.1i_truth/lensed_agntruth/lensed_agn_variability_truth.csv' with (FORMAT 'csv', header)
