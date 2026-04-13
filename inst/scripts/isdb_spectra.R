start <- Sys.time()
tima:::setup_logger(filename = "isdb.log")
logger::log_trace("This script gets and prepares ISDB spectra.")
logger::log_trace("Authors: AR")
logger::log_trace("Contributors: ...")
paths <- "inst/paths.yaml" |>
  yaml::read_yaml()
urls <- paths$urls$wikidata_isdb
doi_mgf <- urls$doi
pattern_mgf <- urls$patterns
path_mgf <- file.path("data/source", pattern_mgf)

purrr::map2(
  .x = pattern_mgf,
  .y = path_mgf,
  .f = tima::get_last_version_from_zenodo,
  doi = doi_mgf
)

tima::prepare_libraries_spectra(
  input = path_mgf,
  nam_lib = "ISDB - Wikidata",
  col_ad = "ADDUCT",
  col_ce = "COLLISION_ENERGY",
  col_ci = "COMPOUND_NAME",
  col_in = "INCHI",
  col_io = NULL,
  col_ik = "INCHIKEY",
  col_il = NULL,
  col_na = NULL,
  col_po = "IONMODE",
  col_sm = "SMILES",
  col_sn = NULL,
  col_si = NULL,
  col_sp = NULL,
  col_sy = NULL
)
end <- Sys.time()
logger::log_success("Script finished in ", format(end - start))
