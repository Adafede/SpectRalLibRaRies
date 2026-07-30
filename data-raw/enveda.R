# Enveda spectral library
# Generate intermediate RDS and TSV files via tima processing
source("inst/scripts/enveda180_spectra.R")

# Load polarity-split RDS and save as separate RDA
enveda180_pos <- readRDS(
  "data/interim/libraries/spectra/exp/enveda180_pos.rds"
) |>
  spectra_to_df()
save(enveda180_pos, file = "data/enveda180_pos.rda")
rm(enveda180_pos)

enveda180_neg <- readRDS(
  "data/interim/libraries/spectra/exp/enveda180_neg.rds"
) |>
  spectra_to_df()
save(enveda180_neg, file = "data/enveda180_neg.rda")
rm(enveda180_neg)

# Load TSV and save as RDA
enveda180_prepared <- tidytable::fread(
  "data/interim/libraries/sop/enveda180_prepared.tsv.gz"
) |>
  data.frame()
save(enveda180_prepared, file = "data/enveda180_prepared.rda")
rm(enveda180_prepared)
