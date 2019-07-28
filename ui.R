#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    titlePanel("Current Details"),
    sidebarLayout(
        sidebarPanel(
        numericInput("Age", "Current Age:",50,min = 20, max = 99),
        numericInput("retAge", "Retirement Age:", 65, min=55, max = 70)
            ),
    
        mainPanel(
        h3 ("Years left for Retirement"),
        textOutput("Ret")
            )
    
        )
    )
    )

