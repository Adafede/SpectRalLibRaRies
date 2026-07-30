#' Convert Spectra object to portable data.frame
#'
#' Converts a Spectra object to a portable data.frame format where metadata
#' columns are preserved and peaks (mz/intensity) are added as list columns.
#' This format is ideal for distribution and can be easily converted back to
#' a Spectra object.
#'
#' @param spectra A Spectra object
#'
#' @return A data.frame with metadata columns plus `mz` and `intensity`
#'   as list columns (one entry per spectrum)
#'
#' @examples
#' \dontrun{
#'   spectra_obj <- Spectra::Spectra(mgf_file, source = "MgfSqlite")
#'   df <- spectra_to_df(spectra_obj)
#'   head(df)
#' }
#'
#' @export
spectra_to_df <- function(spectra) {
  # Extract metadata and peaks
  meta_df <- Spectra::spectraData(spectra) |>
    as.data.frame()
  peaks_data <- Spectra::peaksData(spectra)

  # Add peaks as list columns
  meta_df$mz <- lapply(peaks_data, \(x) x[, "mz"])
  meta_df$intensity <- lapply(peaks_data, \(x) x[, "intensity"])

  rownames(meta_df) <- NULL
  meta_df
}

#' Convert data.frame back to Spectra object
#'
#' Reconstructs a Spectra object from a portable data.frame format created by
#' `spectra_to_df`. The data.frame must have `mz` and `intensity` columns
#' (as lists) along with metadata columns.
#'
#' @param df A data.frame with metadata columns plus `mz` and `intensity`
#'   as list columns
#'
#' @return A Spectra object
#'
#' @examples
#' \dontrun{
#'   spectra_obj <- Spectra::Spectra(mgf_file, source = "MgfSqlite")
#'   df <- spectra_to_df(spectra_obj)
#'   spectra_obj_restored <- df_to_spectra(df)
#'   identical(length(spectra_obj), length(spectra_obj_restored))
#' }
#'
#' @export
df_to_spectra <- function(df) {
  # Create Spectra object directly with the data.frame
  df |>
    Spectra::Spectra()
}
