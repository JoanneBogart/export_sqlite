\copy agn_truth.truth_summary (id, host_galaxy, ra, dec, redshift, is_variable, is_pointsource, flux_u, flux_g, flux_r, flux_i, flux_z, flux_y, flux_u_noMW, flux_g_noMW, flux_r_noMW, flux_i_noMW, flux_z_noMW, flux_y_noMW) from '/global/cscratch1/sd/jrbogart/Run3.1i_truth/agntruth/agn_truth_summary.csv' with (FORMAT 'csv', header);

\copy agn_truth.agn_auxiliary_info (id, host_galaxy, M_i, seed, tau_u, tau_g, tau_r, tau_i, tau_z, tau_y, sf_u, sf_g, sf_r, sf_i, sf_z, sf_y) from '/global/cscratch1/sd/jrbogart/Run3.1i_truth/agntruth/agn_auxiliary_info.csv' with (FORMAT 'csv', header);

\copy agn_truth.agn_variability_truth (id, obsHistID, MJD, bandpass, delta_flux, num_photons) from '/global/cscratch1/sd/jrbogart/Run3.1i_truth/agntruth/agn_variability_truth.csv' with (FORMAT 'csv', header);

