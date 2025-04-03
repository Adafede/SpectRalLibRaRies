start <- Sys.time()
tima:::setup_logger(filename = "massbank.log")
logger::log_trace("This script gets and prepares MASSBANK spectra.")
logger::log_trace("Authors" = "AR")
logger::log_trace("Contributors" = "...")
paths <- "inst/paths.yaml" |>
  yaml::read_yaml()
urls <- paths$urls$massbank
pattern_mgf <- urls$patterns
path_mgf <- file.path("data/source", pattern_mgf)

purrr::map2(
  .x = paste(urls$url, urls$version, pattern_mgf, sep = "/"),
  .y = path_mgf,
  .f = tima::get_file,
)

tima:::prepare_libraries_spectra(
  input = path_mgf,
  nam_lib = "massbank",
  col_ad = "Precursor_type",
  col_ce = "Collision_energy",
  col_ci = NULL,
  col_em = "ExactMass",
  col_in = "InChI",
  col_io = NULL,
  col_ik = "InChIKey",
  col_il = NULL,
  col_mf = "Formula",
  col_na = "Name",
  col_po = "Ion_mode",
  col_sm = "smiles",
  col_sn = NULL,
  col_si = "accession",
  col_sp = "Splash",
  col_sy = "Synon",
  col_xl = NULL
)
end <- Sys.time()
logger::log_success("Script finished in ", format(end - start))
