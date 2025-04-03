start <- Sys.time()
tima:::setup_logger(filename = "merlin.log")
logger::log_trace("This script gets and prepares MERLIN spectra.")
logger::log_trace("Authors" = "AR")
logger::log_trace("Contributors" = "...")
paths <- "inst/paths.yaml" |>
  yaml::read_yaml()
urls <- paths$urls$merlin
doi_mgf <- urls$doi
pattern_mgf <- urls$patterns
path_mgf <- file.path("data/source", pattern_mgf)

purrr::map2(
  .x = pattern_mgf,
  .y = path_mgf,
  .f = tima::get_last_version_from_zenodo,
  doi = doi_mgf
)

path_mgf <- file.path("data/source", pattern_mgf)

purrr::map2(
  .x = pattern_mgf,
  .y = path_mgf,
  .f = tima::get_last_version_from_zenodo,
  doi = doi_mgf
)

tima:::prepare_libraries_spectra(
  input = path_mgf,
  nam_lib = "merlin",
  col_ad = "ADDUCT",
  col_ce = "COLLISION_ENERGY",
  col_ci = NULL,
  col_em = "EXACTMASS",
  col_in = "INCHI",
  col_io = NULL,
  col_ik = "INCHIAUX",
  col_il = NULL,
  col_mf = "FORMULA",
  col_na = "NAME",
  col_po = "IONMODE",
  col_sm = "SMILES",
  col_sn = NULL,
  col_si = "USI",
  col_sp = NULL,
  col_sy = NULL,
  col_xl = NULL
)
end <- Sys.time()
logger::log_success("Script finished in ", format(end - start))
