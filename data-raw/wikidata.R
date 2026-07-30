# Wikidata spectral library (ISDB Wikidata)
# Generate intermediate RDS and TSV files via tima processing
source("inst/scripts/isdb_spectra.R")

# Load polarity-split RDS and save as separate RDA
# Note: Update filenames if tima::prepare_libraries_spectra uses different naming
isdbwikidata_pos <- readRDS(
  "data/interim/libraries/spectra/exp/ISDB - Wikidata_pos.rds"
) |>
  spectra_to_df()
save(isdbwikidata_pos, file = "data/isdbwikidata_pos.rda")
rm(isdbwikidata_pos)

isdbwikidata_neg <- readRDS(
  "data/interim/libraries/spectra/exp/ISDB - Wikidata_neg.rds"
) |>
  spectra_to_df()
save(isdbwikidata_neg, file = "data/isdbwikidata_neg.rda")
rm(isdbwikidata_neg)

# Load TSV and save as RDA
isdbwikidata_prepared <- tidytable::fread(
  "data/interim/libraries/sop/ISDB - Wikidata_prepared.tsv.gz"
) |>
  data.frame()
save(isdbwikidata_prepared, file = "data/isdbwikidata_prepared.rda")
rm(isdbwikidata_prepared)
