#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Customer Churn Model"),
  

  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("LOS",
                   "Number of Length of Stay (LOS):",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      p('A Telco needs to analyze their customer data to derive a Churn Prediction Model. One of the key attributes determine Churn is the LOS (Length of Stay) which shows loyal customers.'),
      p('Using the slider you can show the distribution across LOS range as displayed below:'),
      
       plotOutput("distPlot")
    )
  )
))
