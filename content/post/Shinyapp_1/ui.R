## ui.R 

library(shiny)
library(datasets)

dataset <- datasets::iris

fluidPage(fluidRow(style = "padding-bottom: 20px;",
                   column(4, selectInput('xcol', 'X Variable', names(dataset))),
                   column(4, selectInput('ycol', 'Y Variable', names(dataset),
                                         selected=names(dataset)[[2]])),
                   column(4, numericInput('clusters', 'Cluster count', 3,
                                          min = 1, max = 9))
          ),
          fluidRow(
            plotOutput('kmeans', height = "400px")
          )
)
