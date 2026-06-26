start <- Sys.time()
tima:::setup_logger(filename = "multims2.log")
logger::log_trace("This script gets and prepares MultiMS2 spectra.")
logger::log_trace("Authors: AR")
logger::log_trace("Contributors: ...")
paths <- "inst/paths.yaml" |>
  yaml::read_yaml()
urls <- paths$urls$multims2
doi_mgf <- urls$doi
pattern_mgf <- urls$patterns
path_1 <- "data/source"
path_2 <- "zamboni-lab-MultiMS2-b6e1db2/data/multims2_spectra.mgf"
path_mgf <- file.path(
  path_1,
  pattern_mgf |>
    gsub(pattern = ".*/", replacement = "")
)

purrr::map2(
  .x = pattern_mgf,
  .y = path_mgf,
  .f = tima::get_last_version_from_zenodo,
  doi = doi_mgf
)
utils::unzip(
  zipfile = file.path(path_1,"MultiMS2-0.0.1.zip"),
  files = path_2,
  exdir = path_1
)

tima::prepare_libraries_spectra(
  input = file.path(path_1,path_2),
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
