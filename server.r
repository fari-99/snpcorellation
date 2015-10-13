library(shiny)
library(ggplot2)
options(shiny.maxRequestSize=9*1024^2)

shinyServer(function(input,output){
  inFile1 <- reactive(
    inFile1 <- input$fileFenotype
  )
  inFile2 <- reactive(
    inFile2 <- input$fileGenotype
  )
  output$myOutput = renderDataTable({
    read.csv(inFile1()$datapath, header=TRUE, sep = ",")
  }, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  output$myOutput1 = renderDataTable({
    read.csv(inFile2()$datapath, header=TRUE, sep = ",")
  }, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
})