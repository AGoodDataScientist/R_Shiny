library(shiny)
ui <- fluidPage(
  headerPanel("ReactiveValues example"),
  mainPanel(
    textInput(inputId = "txtinpt",label = "Enter some text",placeholder = "Please enter some text here"),
    actionButton(inputId = "acbutn",label = "Update"),
    textOutput("text")
  )
)
server <-function(input,output,session){
  observeEvent(input$acbutn,{
    text_reactive$text1<-input$txtinpt
  })
  text_reactive <- reactiveValues(
    text1 = "No values Yet"
  )
  output$text <- renderText({
    text_reactive$text1
  })
}
shinyApp(ui,server)