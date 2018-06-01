
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  library(plotly) 
  
# Code to predict Sales for appliance types for entered zip code.

# modelname <- lm(sales, factor(appliance) * month, data=)
# pred_mdl <- predit(modelname, data)
  
  output$NASales <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    ggplot2()
  })
  
})
