shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    x    <- input$bins
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    # draw the histogram with the specified number of bins
    hist(bins, breaks = 10, col = 'darkgray', border = 'white')
    
  })

})