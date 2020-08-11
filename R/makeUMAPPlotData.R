#!/bin/Rscript

#' @title Make UMAP plot data
#' @description Using a given set of labels and umap output, create a data.frame
#' ready for ggplot2.
#' @param umap_layout The `layout` matrix within a `umap` object.
#' @param labels A vector of labels.
#' @return A data.frame of the UMAP coordinates and the labels.
#' @export
makeUMAPPlotData <- function(umap_mat, labels) {
  plt_data <- data.frame(
    x = umap_mat[, 1],
    y = umap_mat[, 2],
    labels = labels
  )

  plt_data
}
