library(shiny)
library(StatsBombR)
library(dplyr)
library(ggplot2)
library(plotly)
library(bslib)

df <- read.csv2("../squad-stats.csv", sep=",")
