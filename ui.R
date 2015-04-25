library(shiny)

shinyUI(
  pageWithSidebar(
  #Application title
    
  headerPanel("BMI calculation"),
  
  sidebarPanel(
    numericInput('height', 'Please enter your height in inches', 60, min = 0, max = 200, step = 1),
    numericInput('weight', 'Please enter your weight lbs', 175, min = 0, max = 1000, step = 5),
    submitButton('Submit')
    ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered height of'),
    verbatimTextOutput("inputValue1"),    
    h4('You entered weight of'),
    verbatimTextOutput("inputValue2"),
    h4('Which resulted in a BMI of'),
    verbatimTextOutput("prediction")
    )
))
