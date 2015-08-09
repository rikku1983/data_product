library(shiny)
prempg <- function(weight, qsec, transmission){
  9.7231 -2.936531*weight/1000 + 1.016974*qsec + 14.079428 * transmission - 4.141376 * transmission * weight/1000
}


shinyServer(
  function(input, output){
    #w <- as.numeric(input$weight)/1000
    #q <- as.numeric(input$qsec)
    
    #output$mpg <- 9.7231 -2.936531*w + 1.016974*q + 14.079428 * t - 4.141376 * t * w
    output$mpg <- renderPrint( 
      prempg(as.numeric(input$weight), as.numeric(input$qsec), as.numeric(input$t)))
  }
)