library(shiny)

# ui.R

shinyUI(fluidPage(
    titlePanel("Miles per gallon calculator"),
    
    sidebarLayout(
        sidebarPanel(
            helpText(
                
                h4("Description : "),br(),
                "This app calculates the distance traveled by your car in miles for each gallon of fuel consumed by the vehicle.",
                br(),
                "The input variables are:",br(),
                "1- The transmission type (Automatic or Manuel)",br(),
                "2- The weight of the vehicle in 1000 Lbs", br(),
                "3- The qsec of the vehicle (The number of seconds needed to complete a quarter mile starting from a standstill)" 
        
                        
                        ),
            
            br(),
            br(), 
            
            selectInput("transmission", 
                        label    = h4("Choose the Transmission Type"),
                        choices  = list("Automatic", "Manual"),
                        selected = "Automatic"),
            
                numericInput("weight", label = h4("Enter the weight of the car (1=1000 Lbs) "),  
                                   value = 2.620),    
                        
            numericInput("qsec", label = h4("Enter the qsec of the car (seconds)"),  
                         value = 16.46) 
            
              
        ),
        
        mainPanel(
            
            textOutput("mpg")
            
            
            )
    )
))