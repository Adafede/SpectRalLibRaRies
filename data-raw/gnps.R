# GNPS spectral library
# Generate intermediate RDS and TSV files via tima processing
source("inst/scripts/gnps_spectra.R")

# Load polarity-split RDS and save as separate RDA
gnps_pos <- readRDS(
  "data/interim/libraries/spectra/exp/gnps_pos.rds"
) |>
  spectra_to_df()
save(gnps_pos, file = "data/gnps_pos.rda")
rm(gnps_pos)

gnps_neg <- readRDS(
  "data/interim/libraries/spectra/exp/gnps_neg.rds"
) |>
  spectra_to_df()
save(gnps_neg, file = "data/gnps_neg.rda")
rm(gnps_neg)

# Load TSV and save as RDA
gnps_prepared <- tidytable::fread(
  "data/interim/libraries/sop/gnps_prepared.tsv.gz"
) |>
  data.frame()
save(gnps_prepared, file = "data/gnps_prepared.rda")
rm(gnps_prepared)
