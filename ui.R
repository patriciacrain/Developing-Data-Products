require(shiny)
require(datasets)
require(reshape2)
require(googleVis)

# Define the UI
shinyUI(
  fluidPage(    
    titlePanel("Survival of Passengers on the Titanic"),
    # Make a row with a sidebar
    sidebarLayout(      
    # Define the sidebar with input
      sidebarPanel(
        selectInput("age", 
                    label="Age:", 
                    choices=c("Child","Adult", "All"),
                    selected="All"),
        selectInput("sex", 
                    label="Sex:",
                    choices=c("Male","Female", "All"),
                    selected="All"),
        helpText("Select a variable to filter the bar chart.")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        htmlOutput("titanicPlot"),
        br(),
        helpText("Data collected by the British Board of Trade. Orginally published as 'Report on the Loss of the the Titanic' on July 30th, 1912.")
      )
      
    )
  )
)