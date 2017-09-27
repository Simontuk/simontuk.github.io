## ui.R 

library(shiny)

dataset <- iris

fluidPage(responsive = FALSE,
          fluidRow(style = "padding-bottom: 20px;",
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
