library(shiny)
ui <- fluidPage(
  checkboxInput(inputId = "checkbox","Check to check"),
  textOutput(outputId = "text")
)

server <- function(input,output,session){
  output$text = renderText({
    ifelse(input$checkbox == 1,"True","False") 
  })
}

shinyApp(ui,server)