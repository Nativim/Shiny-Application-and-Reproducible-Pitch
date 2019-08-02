#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to calcualte the substraction of 2 numbers
shinyServer(function(input, output) {
    
    Age <- reactive({
        Age <- as.integer((as.Date(Sys.Date())- as.Date(input$Dob))/365)
        print(Age)
    })
    
    Ret <- reactive({
    ToRet <- input$retAge - as.integer((as.Date(Sys.Date())- as.Date(input$Dob))/365)
    print(ToRet)  
    })
 output$Age <- renderText(Age())   
 output$Ret <- renderText(Ret()) 
 
    })
    



