#!/usr/bin/env Rscript

# Get pak package via normal route
install.packages("pak", repos = "https://r-lib.github.io/p/pak/dev/")

# Packages to install
install_pkgs <- c(
  "r-lib/pkgdepends",
  "boehringer-ingelheim/davinci",
  "rcmdcheck",
  "roxygen2",
  "pkgdown",
  "styler",
  "lintr",
  "pkgdown",
  "rmarkdown",
  "devtools",
  "pharmaverseadam",
  "shinytest2",
  "golem",
  "shinymeta",
  "shinyjs",
  "AzureAuth",
  "pharmaverseadam",
  "DT",
  "openxlsx",
  "shinyFeedback"
)

# Install packages
pak::pak(
  pkg = install_pkgs,
  dependencies = TRUE,
  ask = FALSE,
  upgrade = FALSE
)

# Remove DaVinci packages from image
grep("^dv.", rownames(installed.packages()), value = TRUE) |> sapply(remove.packages)
