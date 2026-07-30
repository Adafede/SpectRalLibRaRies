# MultiMS2 spectral library
# Generate intermediate RDS and TSV files via tima processing
source("inst/scripts/multims2_spectra.R")

# Load polarity-split RDS and save as separate RDA
multims2_pos <- readRDS(
  "data/interim/libraries/spectra/exp/multims2_pos.rds"
) |>
  spectra_to_df()
save(multims2_pos, file = "data/multims2_pos.rda")
rm(multims2_pos)

multims2_neg <- readRDS(
  "data/interim/libraries/spectra/exp/multims2_neg.rds"
) |>
  spectra_to_df()
save(multims2_neg, file = "data/multims2_neg.rda")
rm(multims2_neg)

# Load TSV and save as RDA
multims2_prepared <- tidytable::fread(
  "data/interim/libraries/sop/multims2_prepared.tsv.gz"
) |>
  data.frame()
save(multims2_prepared, file = "data/multims2_prepared.rda")
rm(multims2_prepared)
