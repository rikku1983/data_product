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
    h2("Do you want to know if the dealer's spec reliable? Or you just want to check how efficient your car is using gas
       ?, This application is for your to find out!!"),
    p("This very simple application use a algorithm derived from 'mtcars' datasets from r, which involves 32 different
       cars' data including 'r names(mtcars)' using regression model. Final model including 3 parameters to predict the 
      miles per gallon(mpg), which are car weight, 1/4 mile time, and transmission type. So your input should cover all three
       parameters best apply to your car in question"),
    p("---------------------------------------------------------------------------------------------------"),
    h2("You car has expected gas efficiency:"),
    verbatimTextOutput("mpg")
  )
))