#!/usr/bin/env Rscript

# Get pak package via normal route
install.packages("pak")

# Packages to install
install_pkgs <- c(
  "shinytest2",
  "lintr",
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
