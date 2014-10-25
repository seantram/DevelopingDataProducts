library(shiny)

mpg_calc <- function(transmission, weight, qsec){
    
    if(transmission =="Automatic" ) {transmission1 <- 0}
    
    else {transmission1 <- 1}
            
    mpg <- 9.618 + 2.936*transmission1 -3.917*weight + 1.226*qsec
    
    round(mpg, digits =2)
}


shinyServer(
    function(input, output) {
        
        output$mpg <- renderText({ 
            
            paste("Your Car Mpg is : " , mpg_calc(input$transmission, input$weight, input$qsec) ) 
                        
            })
       
          
    }
)


