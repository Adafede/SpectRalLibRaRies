# NormanSusDat spectral library
# Generate intermediate RDS and TSV files via tima processing
source("inst/scripts/normansusdat_spectra.R")

# Load polarity-split RDS and save as separate RDA
isdbnormansusdat_pos <- readRDS(
  "data/interim/libraries/spectra/exp/ISDB - NormanSusDat_pos.rds"
) |>
  spectra_to_df()
save(isdbnormansusdat_pos, file = "data/isdbnormansusdat_pos.rda")
rm(isdbnormansusdat_pos)

isdbnormansusdat_neg <- readRDS(
  "data/interim/libraries/spectra/exp/ISDB - NormanSusDat_neg.rds"
) |>
  spectra_to_df()
save(isdbnormansusdat_neg, file = "data/isdbnormansusdat_neg.rda")
rm(isdbnormansusdat_neg)

# Load TSV and save as RDA
isdbnormansusdat_prepared <- tidytable::fread(
  "data/interim/libraries/sop/ISDB - NormanSusDat_prepared.tsv.gz"
) |>
  data.frame()
save(isdbnormansusdat_prepared, file = "data/isdbnormansusdat_prepared.rda")
rm(isdbnormansusdat_prepared)
