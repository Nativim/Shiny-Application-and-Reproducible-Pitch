#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that calculates age and differnce between 2 numbers
shinyUI(fluidPage(
    titlePanel("Current Details"),
    sidebarLayout(
        sidebarPanel(
        dateInput ("Dob", "Date of Birth", "1960-01-01", startview = "year"),
        numericInput("retAge", "Retirement Age:", 65, min=55, max = 70)
            ),
    
        mainPanel(
        h3 ("Age"),
        textOutput ("Age"),
        
        h3 ("Years left for Retirement"),
        textOutput("Ret")
            )
    
        )
    )
    )

