library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index"),
    sidebarPanel(
      numericInput('weight', 'Weight (Kg)', 70, min = 30, max = 200, step = 0.5),
      numericInput('height', 'height (cm)', 170, min = 100, max = 210, step = 0.5),
      submitButton('Submit')
    ),
    mainPanel(
      h4('============== Documentation =================='),
      h4('Background'),
      h5('The body mass index (BMI) or Quetelet index, is a value derived from the mass (weight) and height of an individual. The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of kg/m^2.'),
      h5('The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) in an individual, and then categorize that person as underweight, normal weight, overweight, or obese based on that value. However, there is some debate about where on the BMI scale the dividing lines between categories should be placed.Commonly accepted BMI ranges are underweight: under 18.5, normal weight: 18.5 to 25, overweight: 25 to 30, obese: over 30.'),
      h4('Inputs'),
      h5('- Weight (in kg)'),
      h5('- Height (in cm)'),
      h4('Output'),
      h5('-BMI (in kg/m^2)'),
      h4('=========================================='),
      h3('Results BMI'),
      h4('Weight you entered (kg)'),
      verbatimTextOutput("weightValue"),
      h4('Height you entered (cm)'),
      verbatimTextOutput("heightValue"),
      
      h4('The calculated BMI is (expressed in kg/m^2) '),
      verbatimTextOutput("BMIpred")
    )
  )
)


# shinyUI(
#   pageWithSidebar(
#     # Application title
#     headerPanel("Diabetes prediction"),
#     sidebarPanel(
#       numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5),
#       submitButton('Submit')
#     ),
#     mainPanel(
#       h3('Results of prediction'),
#       h4('You entered'),
#       verbatimTextOutput("inputValue"),
#       h4('Which resulted in a prediction of '),
#       verbatimTextOutput("prediction")
#     )
#   )
# )