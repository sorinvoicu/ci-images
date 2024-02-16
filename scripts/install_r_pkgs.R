#!/usr/bin/env Rscript

# Get pak package via normal route
install.packages("pak")

# Packages to install
install_pkgs <- c(
  "shinytest2",
  "shinytest",
  "lintr",
  "lme4",
  "tern",
  "mmrm"
  # "github::insightsengineering/teal.code",
  # "github::insightsengineering/teal.data",
  # "github::insightsengineering/teal.logger",
  # "github::insightsengineering/teal.reporter",
  # "github::insightsengineering/teal.transform",
  # "github::insightsengineering/teal.widgets",
  # "github::insightsengineering/teal@v0.13.0",
  # "github::insightsengineering/teal.modules.general@v0.2.15",
  # "github::insightsengineering/teal.modules.clinical@v0.8.16",
  # "github::insightsengineering/tern.mmrm"
)

# Install packages
pak::pak(
  pkg = install_pkgs, 
  dependencies = TRUE, 
  ask = FALSE, 
  upgrade = FALSE
)

# Get PhantomJS
shinytest::installDependencies()