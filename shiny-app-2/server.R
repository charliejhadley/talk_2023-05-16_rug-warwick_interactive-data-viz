

function(input, output, session){
  
  hist_data <- eventReactive(c(input$mean),
                             {
                               rnorm(100, mean = input$mean)
                             })
  
  output$hist <- renderPlot({
    
    hist(hist_data(),
         main = input$title)
    
  })
  
}