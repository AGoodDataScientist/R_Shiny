library(shiny)
ui <- fluidPage(
  headerPanel("Observe the Surroundings"),
  mainPanel(
    #Action 
    actionButton(inputId = "buttonid_1","Click me"),
    actionButton(inputId =  "buttonid_2","Donot click me")
  )
)
server <- function(input,output,session){
  #Observe click me Button
  observe({
    input$buttonid_1
    showModal(modalDialog(
      title = "Button Pressed",
      "Thanks for clicking me :)"
    ))
  })
  observe({
    input$buttonid_2
    showModal(modalDialog(
      title ="Button Pressed",
      "I asked not to click me"
    ))
  })
}

shinyApp(ui,server)