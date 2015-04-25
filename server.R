library(shiny)

BMI <- function(height, weight) (weight*703)/(height*height)

shinyServer(
  function(input, output){
  output$inputValue1 <- renderPrint({input$height})
  output$inputValue2 <- renderPrint({input$weight})
  output$prediction <- renderPrint({BMI(input$height, input$weight)})  
  }
)



