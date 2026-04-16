start <- Sys.time()
tima:::setup_logger(filename = "isdb.log")
logger::log_trace("This script gets and prepares NORMANSUSDAT spectra.")
logger::log_trace("Authors: AR")
logger::log_trace("Contributors: ...")
paths <- "inst/paths.yaml" |>
  yaml::read_yaml()
urls <- paths$urls$normansusdat_isdb
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
  nam_lib = "ISDB - NormanSusDat",
  col_ad = "Precursor_type",
  col_ce = "Collision_energy",
  col_ci = NULL,
  col_in = "InChI",
  col_io = NULL,
  col_ik = "InChIKey",
  col_il = NULL,
  col_na = "Name",
  col_po = "IonMode",
  col_sm = "smiles",
  col_sn = NULL,
  col_si = NULL,
  col_sp = NULL,
  col_sy = NULL
)
end <- Sys.time()
logger::log_success("Script finished in ", format(end - start))
