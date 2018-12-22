#Language : R
#This example is for shiny
#This is to print an text based on the button click
library(shiny)
ui <- shinyUI(
  fluidPage(
    p("Hello World!"),
    actionButton(inputId = "Print_Hello",label = "Printing Label"),
    textOutput(outputId = "Server_Hello")
  )
)

server <- shinyServer(function(input,output){
  observeEvent(input$Print_Hello,{
    output$Server_Hello = renderText("Hello world from server side")
  })
})
shinyApp(ui,server)