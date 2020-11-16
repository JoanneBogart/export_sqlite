\copy star_truth_test.stellar_variability_stats (id, model, mean_u, mean_g, mean_r, mean_i, mean_z, mean_y, stdev_u, stdev_g, stdev_r, stdev_i, stdev_z, stdev_y) from '/global/cscratch1/sd/jrbogart/star_truth_pg/stellar_var_stats.csv' with (FORMAT 'csv', header)

