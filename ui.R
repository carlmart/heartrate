library(shiny)
 
# Define UI for application that plots random distributions
shinyUI(pageWithSidebar(
 
  # Application title
  headerPanel("American Heart Association recommendations"),
 
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    helpText("Find out what minimal heart rate is required
              for maximum effectiveness for your workout by age"),
    sliderInput("ages",
                "Average Age: ",
                min = 20,
                max = 70,
                value = 50)
  ),
    
  # Show a plot of the generated distribution
  mainPanel(
    h3("Maximum Effective Heart Rates"),
    p("Coursera Shiny Project , data is taken from
       AHA website at http://tiny.cc/AHAhr March 2016"),
    
    plotOutput("distPlot")
  )
))
