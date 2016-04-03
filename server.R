
library(shiny)
# American Heart Association Heart Rates
# http://tiny.cc/AHAhr
 
# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
 
 
  output$distPlot <- renderPlot({
 #   input$ages <- seq(min(20), max(70), length.out = input$ages + 1)
 
    hr <- data.frame(
         Age =    c(20,30,35,40,45,50,55,60,65,70),
         Targetl = c(100,95,93,90,88,85,83,80,78,75),
         Target2 = c(170,162,157,153,149,145,140,136,132,128),
         Maxhr   = c(200,190,185,180,175,170,165,160,155,150)
         )
 
    plot(hr$Age,hr$Maxhr,main="Target Training  Heart Rate",
         xlim=c(20,80),
         ylim=c(100,225),
         xlab="Age",
         ylab="Min/Max Heart Rates") 
    abline(v = input$ages,col="red")   
    points(hr$Age,hr$Target1,col="blue",type="l")
    points(hr$Age,hr$Target2,col="red",type="b")
    legend(65,220,c("Max Rate","Min Rate"),lty=c(1,1),
           lwd = c(2.5,2.5),col=c("black","red"))
   
  })
})