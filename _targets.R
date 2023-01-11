library(targets)
source("functions.R")
tar_option_set(packages = c("readr", "dplyr", "ggplot2", "MyPackage"))
tar_option_set(envir = getNamespace("MyPackage"))

list(
  tar_target(model, fit_model(diamonds)),
  tar_target(plot, plot_model(model, diamonds)),
  tar_target(plot1, plot_stats(diamonds))
)