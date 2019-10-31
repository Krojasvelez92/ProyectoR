library(shiny)
ui <- fluidPage(
  titlePanel("Erupciones de volcán Popocatéptl"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Numero de Bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      sliderInput("bw_adjust", label = "Bandwidth adjustment:",
                  min = 0.2, max = 2, value = 1, step = 0.2)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)