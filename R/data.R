#' GNPS Spectral Library - Positive Polarity
#'
#' A data.frame containing metadata and spectra from the Global Natural Products
#' Social Molecular Networking (GNPS) database (positive polarity). Peaks (m/z
#' and intensity values) are stored as list columns for compatibility with Spectra
#' objects.
#'
#' @format A data.frame with one row per spectrum and columns including:
#'   \describe{
#'     \item{compound_name}{Character. Compound name}
#'     \item{inchikey}{Character. InChIKey identifier}
#'     \item{smiles}{Character. SMILES string}
#'     \item{precursor_mz}{Numeric. Precursor m/z}
#'     \item{adduct}{Character. Adduct ion form}
#'     \item{polarity}{Character. Ionization polarity}
#'     \item{ms_level}{Integer. MS level (typically 2)}
#'     \item{collision_energy}{Character. Collision energy}
#'     \item{instrument}{Character. Mass spectrometer instrument}
#'     \item{spectrum_id}{Character. Unique spectrum identifier}
#'     \item{mz}{List of numeric. m/z values for each spectrum's peaks}
#'     \item{intensity}{List of numeric. Intensity values for each spectrum's peaks}
#'   }
#'
#' @source \doi{10.5281/zenodo.11566051}
#'
#' @examples
#' data(gnps_pos)
#' head(gnps_pos)
#' nrow(gnps_pos)
"gnps_pos"

#' GNPS Spectral Library - Negative Polarity
#'
#' A data.frame containing metadata and spectra from the Global Natural Products
#' Social Molecular Networking (GNPS) database (negative polarity). Peaks (m/z
#' and intensity values) are stored as list columns for compatibility with Spectra
#' objects.
#'
#' @format Same as \code{gnps_pos}
#'
#' @source \doi{10.5281/zenodo.11566051}
#'
#' @examples
#' data(gnps_neg)
#' head(gnps_neg)
#' nrow(gnps_neg)
"gnps_neg"

#' MassBank Spectral Library - Positive Polarity
#'
#' A data.frame containing metadata and spectra from MassBank (positive polarity),
#' a publicly accessible database of mass spectra for small molecules. Peaks (m/z
#' and intensity values) are stored as list columns.
#'
#' @format A data.frame with one row per spectrum and columns including:
#'   \describe{
#'     \item{compound_name}{Character. Compound name}
#'     \item{inchikey}{Character. InChIKey identifier}
#'     \item{smiles}{Character. SMILES string}
#'     \item{precursor_mz}{Numeric. Precursor m/z}
#'     \item{adduct}{Character. Adduct ion form}
#'     \item{polarity}{Character. Ionization polarity}
#'     \item{ms_level}{Integer. MS level (typically 2)}
#'     \item{collision_energy}{Character. Collision energy}
#'     \item{instrument}{Character. Mass spectrometer instrument}
#'     \item{spectrum_id}{Character. Unique spectrum identifier}
#'     \item{mz}{List of numeric. m/z values for each spectrum's peaks}
#'     \item{intensity}{List of numeric. Intensity values for each spectrum's peaks}
#'   }
#'
#' @source MassBank database. See \url{https://www.massbank.jp/}
#'
#' @examples
#' data(massbank_pos)
#' head(massbank_pos)
"massbank_pos"

#' MassBank Spectral Library - Negative Polarity
#'
#' A data.frame containing metadata and spectra from MassBank (negative polarity).
#'
#' @format Same as \code{massbank_pos}
#'
#' @source MassBank database. See \url{https://www.massbank.jp/}
#'
#' @examples
#' data(massbank_neg)
#' head(massbank_neg)
"massbank_neg"

#' Merlin Spectral Library - Positive Polarity
#'
#' A data.frame containing metadata and spectra from Merlin (positive polarity),
#' a high-quality MS/MS spectral library. Peaks are stored as list columns.
#'
#' @format A data.frame with one row per spectrum and columns similar to GNPS/MassBank
#'
#' @source Merlin library (Zenodo)
#'
#' @examples
#' data(merlin_pos)
#' head(merlin_pos)
"merlin_pos"

#' Merlin Spectral Library - Negative Polarity
#'
#' A data.frame containing metadata and spectra from Merlin (negative polarity).
#'
#' @format Same as \code{merlin_pos}
#'
#' @source Merlin library (Zenodo)
#'
#' @examples
#' data(merlin_neg)
#' head(merlin_neg)
"merlin_neg"

#' MultiMS2 Spectral Library - Positive Polarity
#'
#' A data.frame containing metadata and spectra from MultiMS2 (positive polarity),
#' an MS/MS spectral library. Peaks are stored as list columns.
#'
#' @format A data.frame with one row per spectrum and columns including:
#'   \describe{
#'     \item{compound_name}{Character. Compound name}
#'     \item{inchikey}{Character. InChIKey identifier}
#'     \item{smiles}{Character. SMILES string}
#'     \item{precursor_mz}{Numeric. Precursor m/z}
#'     \item{adduct}{Character. Adduct ion form}
#'     \item{polarity}{Character. Ionization polarity}
#'     \item{ms_level}{Integer. MS level (typically 2)}
#'     \item{collision_energy}{Character. Collision energy}
#'     \item{instrument}{Character. Mass spectrometer instrument}
#'     \item{spectrum_id}{Character. Unique spectrum identifier}
#'     \item{mz}{List of numeric. m/z values for each spectrum's peaks}
#'     \item{intensity}{List of numeric. Intensity values for each spectrum's peaks}
#'   }
#'
#' @source \doi{10.5281/zenodo.17417089}
#'
#' @examples
#' data(multims2_pos)
#' head(multims2_pos)
#' nrow(multims2_pos)
"multims2_pos"

#' MultiMS2 Spectral Library - Negative Polarity
#'
#' A data.frame containing metadata and spectra from MultiMS2 (negative polarity).
#'
#' @format Same as \code{multims2_pos}
#'
#' @source \doi{10.5281/zenodo.17417089}
#'
#' @examples
#' data(multims2_neg)
#' head(multims2_neg)
"multims2_neg"

#' Enveda-180 Spectral Library - Positive Polarity
#'
#' A data.frame containing metadata and spectra from Enveda-180 (positive polarity),
#' a curated MS/MS spectral library. Peaks are stored as list columns.
#'
#' @format A data.frame with one row per spectrum
#'
#' @source \doi{10.5281/zenodo.20436851}
#'
#' @examples
#' data(enveda180_pos)
#' head(enveda180_pos)
"enveda180_pos"

#' Enveda-180 Spectral Library - Negative Polarity
#'
#' A data.frame containing metadata and spectra from Enveda-180 (negative polarity).
#'
#' @format Same as \code{enveda180_pos}
#'
#' @source \doi{10.5281/zenodo.20436851}
#'
#' @examples
#' data(enveda180_neg)
#' head(enveda180_neg)
"enveda180_neg"

#' ISDB NormanSusDat Spectral Library - Positive Polarity
#'
#' A data.frame containing metadata and spectra from ISDB NormanSusDat
#' (positive polarity), a comprehensive MS/MS database. Peaks are stored as
#' list columns.
#'
#' @format A data.frame with one row per spectrum
#'
#' @source \doi{10.5281/zenodo.14854025}
#'
#' @examples
#' data(isdbnormansusdat_pos)
#' head(isdbnormansusdat_pos)
"isdbnormansusdat_pos"

#' ISDB NormanSusDat Spectral Library - Negative Polarity
#'
#' A data.frame containing metadata and spectra from ISDB NormanSusDat
#' (negative polarity).
#'
#' @format Same as \code{isdbnormansusdat_pos}
#'
#' @source \doi{10.5281/zenodo.14854025}
#'
#' @examples
#' data(isdbnormansusdat_neg)
#' head(isdbnormansusdat_neg)
"isdbnormansusdat_neg"

#' ISDB Wikidata Spectral Library - Positive Polarity
#'
#' A data.frame containing metadata and spectra from ISDB Wikidata
#' (positive polarity), a community-curated MS/MS spectral database.
#' Peaks are stored as list columns.
#'
#' @format A data.frame with one row per spectrum
#'
#' @source \doi{10.5281/zenodo.5607185}
#'
#' @examples
#' data(isdbwikidata_pos)
#' head(isdbwikidata_pos)
"isdbwikidata_pos"

#' ISDB Wikidata Spectral Library - Negative Polarity
#'
#' A data.frame containing metadata and spectra from ISDB Wikidata
#' (negative polarity).
#'
#' @format Same as \code{isdbwikidata_pos}
#'
#' @source \doi{10.5281/zenodo.5607185}
#'
#' @examples
#' data(isdbwikidata_neg)
#' head(isdbwikidata_neg)
"isdbwikidata_neg"

#' GNPS Prepared Table
#'
#' A data.frame containing the prepared tabular GNPS metadata and spectrum
#' annotations used to derive the shipped GNPS polarity-split datasets.
#'
#' @format A data.frame prepared by \code{tima::prepare_libraries_spectra()}.
#'
#' @source \doi{10.5281/zenodo.11566051}
#'
#' @examples
#' data(gnps_prepared)
#' head(gnps_prepared)
"gnps_prepared"

#' MassBank Prepared Table
#'
#' A data.frame containing the prepared tabular MassBank metadata and spectrum
#' annotations used to derive the shipped MassBank polarity-split datasets.
#'
#' @format A data.frame prepared by \code{tima::prepare_libraries_spectra()}.
#'
#' @source MassBank database. See \url{https://www.massbank.jp/}
#'
#' @examples
#' data(massbank_prepared)
#' head(massbank_prepared)
"massbank_prepared"

#' Merlin Prepared Table
#'
#' A data.frame containing the prepared tabular Merlin metadata and spectrum
#' annotations used to derive the shipped Merlin polarity-split datasets.
#'
#' @format A data.frame prepared by \code{tima::prepare_libraries_spectra()}.
#'
#' @source Merlin library (Zenodo)
#'
#' @examples
#' data(merlin_prepared)
#' head(merlin_prepared)
"merlin_prepared"

#' MultiMS2 Prepared Table
#'
#' A data.frame containing the prepared tabular MultiMS2 metadata and spectrum
#' annotations used to derive the shipped MultiMS2 polarity-split datasets.
#'
#' @format A data.frame prepared by \code{tima::prepare_libraries_spectra()}.
#'
#' @source \doi{10.5281/zenodo.17417089}
#'
#' @examples
#' data(multims2_prepared)
#' head(multims2_prepared)
"multims2_prepared"

#' Enveda-180 Prepared Table
#'
#' A data.frame containing the prepared tabular Enveda-180 metadata and
#' spectrum annotations used to derive the shipped Enveda-180 polarity-split
#' datasets.
#'
#' @format A data.frame prepared by \code{tima::prepare_libraries_spectra()}.
#'
#' @source \doi{10.5281/zenodo.20436851}
#'
#' @examples
#' data(enveda180_prepared)
#' head(enveda180_prepared)
"enveda180_prepared"

#' ISDB NormanSusDat Prepared Table
#'
#' A data.frame containing the prepared tabular ISDB NormanSusDat metadata and
#' spectrum annotations used to derive the shipped polarity-split datasets.
#'
#' @format A data.frame prepared by \code{tima::prepare_libraries_spectra()}.
#'
#' @source \doi{10.5281/zenodo.14854025}
#'
#' @examples
#' data(isdbnormansusdat_prepared)
#' head(isdbnormansusdat_prepared)
"isdbnormansusdat_prepared"

#' ISDB Wikidata Prepared Table
#'
#' A data.frame containing the prepared tabular ISDB Wikidata metadata and
#' spectrum annotations used to derive the shipped polarity-split datasets.
#'
#' @format A data.frame prepared by \code{tima::prepare_libraries_spectra()}.
#'
#' @source \doi{10.5281/zenodo.5607185}
#'
#' @examples
#' data(isdbwikidata_prepared)
#' head(isdbwikidata_prepared)
"isdbwikidata_prepared"
