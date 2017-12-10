#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(dplyr)
library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  # read the telecom dataset input file
  telecomDataframe <- read.csv("WA_Fn-UseC_-Telco-Customer-Churn.csv", sep = ",")
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R

    
    x    <- telecomDataframe[, 6] 
    LOS <- seq(min(x), max(x), length.out = input$LOS + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = LOS, col = 'blue', border = 'white', 
         main="Customer Length of Stay",
         xlab="LOS")
    
  })
  
})
