library(shiny)
ui <- fluidPage(
  headerPanel("Example for Reactive"),
  mainPanel(
    textInput(inputId = "textinput",label = "Enter Text Here",placeholder = "Please enter some text"),
    textOutput("text")
  )
)
server <- function(input,output,session){
    text_reacttives <- reactive({
      input$textinput
    })
    #textoutput
    output$text <- renderText({
      text_reacttives()
    })
}
shinyApp(ui,server)