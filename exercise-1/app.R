# Exercise 1: Building a user interface
install.packages("shinythemes")
library(shinythemes)
# Load the `shiny` package (install it in the R terminal if you haven't already)
library(shiny)

# Define a new `ui` variable. This variable should be assigned a `fluidPage()` 
# layout, which should be passed the following:
ui <- fluidPage (
  theme = shinytheme("superhero"),

  # A top level header: "First Shiny Website"
  h1("First Shiny"),
  
  # A Paragraph, describing your excitement: include some `strong` text
  p("I'm so ", strong("excited"), "about my project"),

  # An image with this `src`
  # https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif
  img(src="https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif"),
  
  # Another paragraph about a slider: include some `em` text
  p("I dont lknow what to write"),
  
  # A slider with an appropriate label, min of 10, max of 100, value of 50  
  sliderInput(
    "slider",
    "slider", min = 10, max = 100, value = 50
  )

)
# Define a `server` function that accepts an input and an output
# At this point, don't do anything in the function
# This function should perform the following:
server <- function(input, output) {}


# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)
