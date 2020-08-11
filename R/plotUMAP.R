#!/bin/Rscript

#' @title Plot UMAP data
#' @description Plots the output of `makeUMAPPlotData`.
#' @param plt_data Data.frame of UMAP coordinates and labels.
#' @return A `ggplot` object. A scatter plot of the UMAP coordinates of each item
#' coloured by the labels.
#' @importFrom ggplot2 ggplot aes geom_point
#' @export
plotUMAP <- function(plt_data) {
  p <- ggplot2::ggplot(
    data = plt_data,
    ggplot2::aes(x = x, y = y, colour = labels)
  ) +
    ggplot2::geom_point()

  p
}
