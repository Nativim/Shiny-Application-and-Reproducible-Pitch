Retirement Shiny User Guide
========================================================


author: Nati Munoz

date: 28th July 2019
autosize: true


Overview
========================================================

This presentation is based on a shiny application that get 2 numeric values as input and performs a simple calculation on the server.

The code for the user interface and server can be found in: 
https://github.com/Nativim/Shiny-Application-and-Reproducible-Pitch




Content of the Retirement Application
========================================================


The application calculates the number of years to retirement given the current age and the retirement age.

By default, the current age is populated as 50 and the retirement age as 65.

There is a minimun and a maximun number for both inputs


Inputs
========================================================
The user needs to input the following:
- Current age, set as a numeric iput to be able to calculation
- Retirement age,set also as a numeric input to be able to do the calculation

Function to calculate the number of years to retirement
========================================================
The function "Ret" gets the retirement age and input age as numeric values from the user interface, calculate the difference and print the result in a text format so it can be displayed as a text output in the interface



```r
library(shiny)

# Define server logic required to calcualte the substraction of 2 numbers
shinyServer(function(input, output) {
    
    Ret <- reactive({
    ToRet <- input$retAge - input$Age
    print(ToRet)  
    })
    
 output$Ret <- renderText(Ret()) 
 
    })
```


