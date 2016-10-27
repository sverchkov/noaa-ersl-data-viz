# Libraries
library("dplyr")
library("ggplot2")

D =
  # Load data
  read.table( "data/co2_mm_mlo.txt", comment.char = "#" ) %>%
  # Replace the -99.99 "missing value" sentinel with NA
  mutate( V4 = replace( V4, V4 < 0 , NA ) )

ggplot( data = D, aes(x = V3, y = V4) ) + geom_line()

