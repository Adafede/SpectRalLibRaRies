# MassBank spectral library
# Generate intermediate RDS and TSV files via tima processing
source("inst/scripts/massbank_spectra.R")

# Load polarity-split RDS and save as separate RDA
massbank_pos <- readRDS(
  "data/interim/libraries/spectra/exp/massbank_pos.rds"
) |>
  spectra_to_df()
save(massbank_pos, file = "data/massbank_pos.rda")
rm(massbank_pos)

massbank_neg <- readRDS(
  "data/interim/libraries/spectra/exp/massbank_neg.rds"
) |>
  spectra_to_df()
save(massbank_neg, file = "data/massbank_neg.rda")
rm(massbank_neg)

# Load TSV and save as RDA
massbank_prepared <- tidytable::fread(
  "data/interim/libraries/sop/massbank_prepared.tsv.gz"
) |>
  data.frame()
save(massbank_prepared, file = "data/massbank_prepared.rda")
rm(massbank_prepared)
