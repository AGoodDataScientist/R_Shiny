library(shiny)
library(ggplot2)
ui <- fluidPage(
  plotOutput(outputId = "myplot"),
  plotOutput(outputId = "myggplot")
)
server <- function(input,output,session){
  output$myplot = renderPlot({
    hist(rnorm(1000))
  })
  output$myggplot = renderPlot({
    ggplot(iris,
           aes(Sepal.Length,Sepal.Width,color = Species))+
      geom_point()
  })
}
shinyApp(ui,server)