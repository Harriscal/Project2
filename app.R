library(shiny)

ui <- fluidPage(
  titlePanel("Test App"),
  sidebarLayout(
    sidebarPanel(
      helpText("This is a test of shiny::runGitHub.")
    ),
    mainPanel(
      textOutput("test_output")
    )
  )
)

server <- function(input, output, session) {
  output$test_output <- renderText({
    "If you see this, runGitHub is working!"
  })
}

shinyApp(ui = ui, server = server)
