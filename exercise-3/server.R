### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
server <- function(input, output) {
  

# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter
output$scatter <- renderPlot({
  x <- mpg[[input$x_var]]
  y <- mpg[[input$y_var]]
  title <- paste0("MPG Dataset: ", input$x_var, " v.s.", input$y_var)
  p <- ggplot() +
    geom_point(mapping = aes(x = x, y = y), 
               size = input$size, 
               color = input$color) +
    labs(x = input$x_var, y = input$y_var, title = title)
  return(p)
})


}
  
    # Store x and y values to 



    # Store the title of the graph in a variable

    # Create ggplot scatter



shinyServer(server)
