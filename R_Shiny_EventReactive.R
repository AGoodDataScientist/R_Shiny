library(shiny)
ui <- fluidPage(
  headerPanel("Example for EventReactive"),
  mainPanel(
    textInput(inputId = "textinput",label = "Enter Text Here",placeholder = "Please enter some text"),
    actionButton(inputId = "acbutton",label = "Update"),
    textOutput("text")
  )
)
server <- function(input,output,session){
  
  text_Eventreacttives <- eventReactive(input$acbutton,{
    input$textinput
  })
  #textoutput
  output$text <- renderText({
    text_Eventreacttives()
  })
}
shinyApp(ui,server)