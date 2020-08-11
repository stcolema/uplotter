#!/bin/Rscript

#' @title Visualise UMAP
#' @description Wrapper function, creating and visualising UMAP
#' @param x Data.frame to perform UMAP upon.
#' @param labels A vector of labels associated with `x`.
#' @return A `ggplot` object. A scatter plot of the UMAP coordinates of each item
#' coloured by the labels.
#' @importFrom umap umap
#' @export
visualiseUMAP <- function(x, labels){
  
  umap_obj <- umap::umap(x)
  plt_data <- makeUMAPPlotData(umap_obj$layout, labels)
  p <- plotUMAP(plt_data)
  p
}