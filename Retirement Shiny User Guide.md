Retirement Shiny User Guide
========================================================


author: Nati Munoz

date:  2nd August 2019
autosize: true


Overview
========================================================

This presentation is based on a shiny application that get a date and a numeric value as input and performs a simple calculation on the server.

The code for the user interface and server can be found in: 
https://github.com/Nativim/Shiny-Application-and-Reproducible-Pitch




Content of the Retirement Application
========================================================


The application calculates the age and number of years to retirement given the date of birth and the retirement age.

By default, the date of birth is 1st Jan 2060 and the retirement age is 65.

The date of birth is input as a date format but the age calculated as an integer.


Inputs
========================================================
The user needs to input the following:
- Date of birth, set as a date iput in a widget with a year view.
- Retirement age,set also as a numeric input to be able to do the substraction once the age is calculated in the server

Function to calculate the age and number of years to retirement
========================================================
The function "Age" calculate the difference between today and the date of birth in years (divided by 365 days per year) and convert the result in an integer. 
"Ret" gets the retirement age as numeric values from the user interface, calculate the difference between this value and the age.



```r
library(shiny)

# Define server logic required to calcualte the age and substraction of 2 numbers
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
```


