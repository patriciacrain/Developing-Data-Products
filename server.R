# loading required packages
require(shiny)
require(datasets)
require(reshape2)
require(googleVis)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the plot
  output$titanicPlot <- renderGvis({
    titanic <- data.frame(Titanic)
    titanic <- switch(input$age,
                   "Child" = titanic[titanic$Age=="Child",],
                   "Adult" = titanic[titanic$Age=="Adult",],
                   "All" = titanic)
    titanic <- switch(input$sex,
                      "Female" = titanic[titanic$Sex=="Female",],
                      "Male" = titanic[titanic$Sex=="Male",],
                      "All" = titanic )
    titanic <- melt(titanic[,c(1,4,5)])
    titanic <- dcast(titanic, Class~Survived, sum)
    # Render a barplot
    gvisColumnChart(titanic, options=list(isStacked=TRUE, hAxes="[{title:'Class of Passenger'}]"))
           
  })
})

