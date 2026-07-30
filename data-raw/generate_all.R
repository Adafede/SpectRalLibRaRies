#' Generate all SpectRalLibRaRies datasets
#'
#' This master script orchestrates the generation of all spectral library datasets
#' split by polarity (positive/negative).
#' 
#' Workflow:
#' 1. Run inst/scripts/*_spectra.R to download/prepare and save intermediate RDS
#'    (RDS files preserve polarity splits if present)
#' 2. Run data-raw/*.R to load RDS, extract polarity splits, and save as RDA files
#'
#' Output datasets:
#'   gnps_pos, gnps_neg, gnps_prepared
#'   massbank_pos, massbank_neg, massbank_prepared
#'   merlin_pos, merlin_neg, merlin_prepared
#'   multims2_pos, multims2_neg, multims2_prepared
#'   enveda180_pos, enveda180_neg, enveda180_prepared
#'   isdbnormansusdat_pos, isdbnormansusdat_neg, isdbnormansusdat_prepared
#'   isdbwikidata_pos, isdbwikidata_neg, isdbwikidata_prepared
#'
#' Run with: Rscript data-raw/generate_all.R

message("\n")
message("════════════════════════════════════════════════════════════════════")
message("SpectRalLibRaRies Data Generation (Polarity-Split)")
message("════════════════════════════════════════════════════════════════════")

start_time <- Sys.time()

# List of datasets to generate
datasets <- c(
  "gnps",
  "massbank",
  "merlin",
  "multims2",
  "enveda",
  "normansusdat",
  "wikidata"
)

generated <- character()
failed <- character()

for (dataset in datasets) {
  script_path <- file.path("data-raw", paste0(dataset, ".R"))
  
  if (!file.exists(script_path)) {
    warning("SKIP: ", script_path, " not found")
    failed <- c(failed, dataset)
    next
  }
  
  message("\n→ Generating ", dataset, " (split by polarity)...")
  
  tryCatch({
    source(script_path)
    generated <- c(generated, dataset)
  }, error = function(e) {
    warning("ERROR in ", dataset, ": ", conditionMessage(e))
    failed <<- c(failed, dataset)
  })
}

elapsed <- format(difftime(Sys.time(), start_time))

message("\n")
message("════════════════════════════════════════════════════════════════════")
message("Summary: Generated in ", elapsed)
message("✓ Success: ", length(generated), " - ", paste(generated, collapse = ", "))
if (length(failed) > 0) {
  message("✗ Failed: ", length(failed), " - ", paste(failed, collapse = ", "))
}
message("════════════════════════════════════════════════════════════════════\n")

# Show generated files
rda_files <- list.files("data", pattern = "\\.rda$", full.names = TRUE)
if (length(rda_files) > 0) {
  message("\nGenerated RDA files:")
  for (f in sort(rda_files)) {
    size <- format(file.size(f), units = "auto")
    message("  - ", basename(f), " (", size, ")")
  }
}
