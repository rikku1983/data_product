library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Prediction of Gas Efficiency"),
  sidebarPanel(
    h1("Input parameters of your car here:"),
    textInput(inputId="weight", label="How much your car weighs in lbs", value="1000"),
    textInput(inputId="qsec", label="What is the 1/4 mile time of your car?", value="20"),
    radioButtons(inputId="t", label="Your transmission?", choices=c("Auto"="0", "Mannual"="1"))
    #submitButton(text="Submit")
  ),
  mainPanel(
    h2("You car has expected gas efficiency:"),
    verbatimTextOutput("mpg")
  )
))