# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(
  

  # A page header
h1("MPG"),
  
  # Add a select input for the x variable
selectInput(
  "x_var",
  label = "X Variable", 
  choices = select_values, 
  selected = "displ"
),
  
  # Add a select input for the y variable
selectInput(
  "y_var",
  label = "Y Variable", 
  choices = select_values, 
  selected = "syl"
),


  # Add a sliderInput to set the size of each point
sliderInput(
  "size",
  "choose size", min = 10, max = 100, value = 50
),

  # Add a selectInput that allows you to select a color from a list of choices
selectInput(
  "color",
  label = "color", 
  choices = list("Red" = "red", "Blue" = "blue", "Green" = "green"),
  selected = "Red"
),

plotOutput("scatter")
  # Plot the output with the name "scatter"
)
shinyUI(ui)