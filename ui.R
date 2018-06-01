
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Appliance Sales Prediction"),
  
  # Sidebar with a slider input for number of month 
  sidebarLayout(
    sidebarPanel(
       sliderInput(month,
                   "Number of month:",
                   min = 1,
                   max = 12,
                   value = 4)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("NASales")
    )
  )
))
