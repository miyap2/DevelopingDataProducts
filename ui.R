# Coursera - Developing Data Products- Course Project
# ui.R file for the shiny app
# This app is developed to help in visualising the airquality dataset in R.

library(shiny)
library(markdown)

shinyUI(navbarPage("Ozone Data",
  tabPanel("Visualise",
  
  sidebarLayout(
    sidebarPanel(
      h3("Histogram"),
      helpText("Select a variable to plot a histogram."),
      radioButtons("plot","Variable",
                   c("Ozone"="Ozone",
                     "Solar radiation"="Solar.R",
                     "Wind"="Wind",
                     "Temperature"="Temp"
                   )),
      hr(),
      h3("Scatterplot with regression line"),
      helpText("Select a factor to plot and show regression line for Ozone."),
        selectInput("varx", "X factor:",
                    choices =c("Solar.R","Wind","Temp")
                   )
    ),
    mainPanel(
      plotOutput("histplot", height="300px"),
      plotOutput("prediction", height="300px")
    )
  )
),
  
  tabPanel("About",
     mainPanel(
        includeMarkdown("about.md")
     )
  )
)
)