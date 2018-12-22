library(shiny)
library(DT)
ui <- fluidPage(
  dataTableOutput(outputId = "DTOutput")
)

server <- function(input,output,session){
  output$DTOutput = renderDataTable({
    datatable(iris)
  })
}

shinyApp(ui,server)