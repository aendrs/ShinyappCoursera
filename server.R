library(shiny)
BMI <- function(weight, height) weight / (height/100)^2
shinyServer(
  function(input, output) {
    output$weightValue <- renderPrint({input$weight})
    output$heightValue <- renderPrint({input$height})
    output$BMIpred <- renderPrint({BMI(input$weight, input$height)})
  }
)



# diabetesRisk <- function(glucose) glucose / 200
# shinyServer(
#   function(input, output) {
#     output$inputValue <- renderPrint({input$glucose})
#     output$prediction <- renderPrint({diabetesRisk(input$glucose)})
#   }
# )