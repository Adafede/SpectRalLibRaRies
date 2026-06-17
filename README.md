<!-- README.md is generated from README.qmd. Please edit that file -->

# SpectRalLibRaRies

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

This package provides spectral libraries in R.

⚠️ This repository is not maintained and will not be except for extreme
interest. It has just been opened for the sake of transparency.

For now, the version of MassBank used and the Zenodo repository IDs are added
manually to the file names. This might change in the future.

Also look at <https://github.com/taxonomicallyinformedannotation/tima-isdb-pos>
and <https://github.com/taxonomicallyinformedannotation/tima-isdb-neg>

## Main Citations

- The *RforMassSpectrometry* packages suite:
  <https://doi.org/10.3390/metabo12020173>
- Enveda-180: <https://doi.org/10.5281/zenodo.20436851>,
  <https://doi.org/10.26434/chemrxiv.15004319>
- GNPS: <https://doi.org/10.5281/zenodo.11566051>,
  <https://doi.org/10.1038/nbt.3597>
- MassBank: <https://doi.org/10.5281/zenodo.3378723>,
  <https://doi.org/10.1093/nar/gkaf1193>
- Merlin: <https://doi.org/10.5281/zenodo.13911806>,
  <https://doi.org/10.1038/s41592-025-02813-0>
- ISDB-NormanSusDat: <https://zenodo.org/records/14854025>,
  <https://doi.org/10.1007/s00216-025-06034-4>
- ISDB-Wikidata: <https://doi.org/10.5281/zenodo.14887271>

## Additional software credits

  | Package     | Version     | Citation                                                    |
  | :---------- | :---------- | :---------------------------------------------------------- |
  | base        | 4.6.0       | R Core Team (2026)                                          |
  | BiocManager | 1.30.27     | Morgan and Ramos (2025)                                     |
  | BiocVersion | 3.23.1      | Morgan (2025)                                               |
  | knitr       | 1.51        | Xie (2014); Xie (2015); Xie (2025)                          |
  | logger      | 0.4.2       | Daróczi and Wickham (2026)                                  |
  | R.utils     | 2.13.0      | Bengtsson (2025)                                            |
  | rmarkdown   | 2.31        | Xie et al. (2018); Xie et al. (2020); Allaire et al. (2026) |
  | tidyverse   | 2.0.0       | Wickham et al. (2019)                                       |
  | tima        | 2.13.0.9000 | Rutz et al. (2019); Rutz and Allard (2026)                  |
  | yaml        | 2.3.12      | Stephens and Simonov (2025)                                 |

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-rmarkdown2026" class="csl-entry">

Allaire, JJ, Yihui Xie, Christophe Dervieux, et al. 2026.
*<span class="nocase">rmarkdown</span>: Dynamic Documents for r*.
<https://github.com/rstudio/rmarkdown>.

</div>

<div id="ref-Rutils" class="csl-entry">

Bengtsson, Henrik. 2025. *<span class="nocase">R.utils</span>: Various
Programming Utilities*. <https://doi.org/10.32614/CRAN.package.R.utils>.

</div>

<div id="ref-logger" class="csl-entry">

Daróczi, Gergely, and Hadley Wickham. 2026.
*<span class="nocase">logger</span>: A Lightweight, Modern and Flexible
Logging Utility*. <https://doi.org/10.32614/CRAN.package.logger>.

</div>

<div id="ref-BiocVersion" class="csl-entry">

Morgan, Martin. 2025. *BiocVersion: Set the Appropriate Version of
Bioconductor Packages*.

</div>

<div id="ref-BiocManager" class="csl-entry">

Morgan, Martin, and Marcel Ramos. 2025. *BiocManager: Access the
Bioconductor Project Package Repository*.
<https://doi.org/10.32614/CRAN.package.BiocManager>.

</div>

<div id="ref-base" class="csl-entry">

R Core Team. 2026. *R: A Language and Environment for Statistical
Computing*. R Foundation for Statistical Computing.
<https://doi.org/10.32614/R.manuals>.

</div>

<div id="ref-tima2026" class="csl-entry">

Rutz, Adriano, and Pierre-Marie Allard. 2026.
*<span class="nocase">tima</span>: Taxonomically Informed Metabolite
Annotation*. <https://doi.org/10.5281/zenodo.5797920>.

</div>

<div id="ref-tima2019" class="csl-entry">

Rutz, Adriano, Miwa Dounoue-Kubo, Simon Ollivier, et al. 2019.
“Taxonomically Informed Scoring Enhances Confidence in Natural Products
Annotation.” *Frontiers in Plant Science* 10.
<https://doi.org/10.3389/FPLS.2019.01329>.

</div>

<div id="ref-yaml" class="csl-entry">

Stephens, Jeremy, and Kirill Simonov. 2025.
*<span class="nocase">yaml</span>: Methods to Convert r Data to YAML and
Back*. <https://doi.org/10.32614/CRAN.package.yaml>.

</div>

<div id="ref-tidyverse" class="csl-entry">

Wickham, Hadley, Mara Averick, Jennifer Bryan, et al. 2019. “Welcome to
the <span class="nocase">tidyverse</span>.” *Journal of Open Source
Software* 4 (43): 1686. <https://doi.org/10.21105/joss.01686>.

</div>

<div id="ref-knitr2014" class="csl-entry">

Xie, Yihui. 2014. “<span class="nocase">knitr</span>: A Comprehensive
Tool for Reproducible Research in R.” In *Implementing Reproducible
Computational Research*, edited by Victoria Stodden, Friedrich Leisch,
and Roger D. Peng. Chapman; Hall/CRC.

</div>

<div id="ref-knitr2015" class="csl-entry">

Xie, Yihui. 2015. *Dynamic Documents with R and Knitr*. 2nd ed. Chapman;
Hall/CRC. <https://yihui.org/knitr/>.

</div>

<div id="ref-knitr2025" class="csl-entry">

Xie, Yihui. 2025. *<span class="nocase">knitr</span>: A General-Purpose
Package for Dynamic Report Generation in R*. <https://yihui.org/knitr/>.

</div>

<div id="ref-rmarkdown2018" class="csl-entry">

Xie, Yihui, J. J. Allaire, and Garrett Grolemund. 2018. *R Markdown: The
Definitive Guide*. Chapman; Hall/CRC. <https://yihui.org/rmarkdown/>.

</div>

<div id="ref-rmarkdown2020" class="csl-entry">

Xie, Yihui, Christophe Dervieux, and Emily Riederer. 2020. *R Markdown
Cookbook*. Chapman; Hall/CRC. <https://yihui.org/rmarkdown-cookbook>.

</div>

</div>
