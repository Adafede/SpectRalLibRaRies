start <- Sys.time()
tima:::setup_logger(filename = "multims2.log")
logger::log_trace("This script gets and prepares MultiMS2 spectra.")
logger::log_trace("Authors: AR")
logger::log_trace("Contributors: ...")

paths <- "inst/paths.yaml" |>
  yaml::read_yaml()
urls <- paths$urls$multims2
doi_zip <- urls$doi
pattern_zip <- urls$patterns

path_zip <- file.path(
  "data/source",
  pattern_zip |>
    gsub(pattern = ".*/", replacement = "")
)
path_mgf_1 <- "zamboni-lab-MultiMS2-b6e1db2/data/multims2_spectra.mgf"

purrr::map2(
  .x = pattern_zip,
  .y = path_zip,
  .f = tima::get_last_version_from_zenodo,
  doi = doi_zip
)

# Extract MGF from ZIP
utils::unzip(
  zipfile = file.path("data/source", "MultiMS2-0.0.1.zip"),
  files = path_mgf_1,
  exdir = "data/source"
)

path_mgf <- file.path("data/source", path_mgf_1)

tima::prepare_libraries_spectra(
  input = path_mgf,
  nam_lib = "multims2",
  col_ad = "ADDUCT",
  col_ce = "COLLISION_ENERGY",
  col_ci = NULL,
  col_in = "INCHI",
  col_io = NULL,
  col_ik = "INCHIAUX",
  col_il = NULL,
  col_na = "COMPOUND_NAME",
  col_po = "IONMODE",
  col_sm = "SMILES",
  col_sn = NULL,
  col_si = "SOURCE_SCAN_USI",
  col_sp = NULL,
  col_sy = NULL
)

end <- Sys.time()
logger::log_success("Script finished in ", format(end - start))
