start <- Sys.time()
tima:::setup_logger(filename = "massbank.log")
logger::log_trace("This script gets and prepares MASSBANK spectra.")
logger::log_trace("Authors" = "AR")
logger::log_trace("Contributors" = "...")

paths <- "inst/paths.yaml" |>
  yaml::read_yaml()
urls <- paths$urls$massbank
pattern_msp <- urls$patterns
path_msp <- file.path("data/source", pattern_msp)

purrr::map2(
  .x = paste(urls$url, urls$version, pattern_msp, sep = "/"),
  .y = path_msp,
  .f = tima::get_file
)

tima::prepare_libraries_spectra(
  input = path_msp,
  nam_lib = "massbank",
  col_ad = "Precursor_type",
  col_ce = "Collision_energy",
  col_ci = NULL,
  col_in = "InChI",
  col_io = NULL,
  col_ik = "InChIKey",
  col_il = NULL,
  col_na = "Name",
  col_po = "Ion_mode",
  col_sm = "smiles",
  col_sn = NULL,
  col_si = "accession",
  col_sp = "Splash",
  col_sy = "Synon"
)

end <- Sys.time()
logger::log_success("Script finished in ", format(end - start))
