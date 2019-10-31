library(shiny)
server <- function(input, output) {
  output$distPlot <- renderPlot({
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x, breaks = bins, col = 'orange', border = 'blue')
    dens <- density(faithful$eruptions, adjust = input$bw_adjust)
    lines(dens, col = "red")
  })
} 