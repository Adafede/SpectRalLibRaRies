# Merlin spectral library
# Generate intermediate RDS and TSV files via tima processing
source("inst/scripts/merlin_spectra.R")

# Load polarity-split RDS and save as separate RDA
merlin_pos <- readRDS(
  "data/interim/libraries/spectra/exp/merlin_pos.rds"
) |>
  spectra_to_df()
save(merlin_pos, file = "data/merlin_pos.rda")
rm(merlin_pos)

merlin_neg <- readRDS(
  "data/interim/libraries/spectra/exp/merlin_neg.rds"
) |>
  spectra_to_df()
save(merlin_neg, file = "data/merlin_neg.rda")
rm(merlin_neg)

# Load TSV and save as RDA
merlin_prepared <- tidytable::fread(
  "data/interim/libraries/sop/merlin_prepared.tsv.gz"
) |>
  data.frame()
save(merlin_prepared, file = "data/merlin_prepared.rda")
rm(merlin_prepared)
