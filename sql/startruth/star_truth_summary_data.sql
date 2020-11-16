\copy star_truth_test.truth_summary (id, host_galaxy, ra, dec, redshift, is_variable, is_pointsource, flux_u, flux_g, flux_r, flux_i, flux_z, flux_y, flux_u_noMW, flux_g_noMW, flux_r_noMW, flux_i_noMW, flux_z_noMW, flux_y_noMW) from '/global/cscratch1/sd/jrbogart/star_truth_pg/stellar_sum.csv' with (FORMAT 'csv', header)

