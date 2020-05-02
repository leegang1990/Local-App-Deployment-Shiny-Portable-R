
# Load required libraries

library(dplyr)


# Define UI for Sample Application

ui <- navbarPage("Sample App",
                 tabPanel("Random Number Generator",
                          sidebarLayout(
                              sidebarPanel(
                                  h3("Side Panel"),
                                  br(),
                                  h6("Sample application for demo purposes."),
                                  br(),
                                  actionButton("Quit1", "Close App")
                                  ),
                              
                              mainPanel(
                                  h4("Step 1: Select the Number of Random Numbers To Be Generated"),
                                  numericInput("input_num", "Please enter how many random numbers to be generated",
                                               value = 1, step = 1, min = 1),
                                  br(),
                                  br(),
                                  h4("Step 2: Enter The Range of the Random Number"),
                                  numericInput("input_minrange", "Please enter the minimum range",
                                               value = 0),
                                  numericInput("input_maxrange", "Please enter the maximum range",
                                               value = 100),
                                  br(),
                                  br(),
                                  actionButton("act_Gen_Num", "Generate Random Number"),
                                  br(),
                                  br(),
                                  textOutput("output_result"),
                                  br(),
                                  br(),
                                  br()
                                  )
                              )
                          )
                              
)
                 

# Server Logic For Sample Application

server <- function(input, output, session) {

    set.seed(1234)
    
    observeEvent(input$act_Gen_Num, {
        
        rand <- runif(input$input_num, 
                      min = as.numeric(input$input_minrange), 
                      max = as.numeric(input$input_maxrange))
        
        output$output_result <- renderText({
            round(rand,0)
        })
    }) #
    


## ============================================================================
## General App Settings
## ============================================================================
    
    observeEvent(input$Quit1, {
        stopApp()
    })

    session$onSessionEnded(function(){
        stopApp()
    })
}

# Run the application 
shinyApp(ui = ui, server = server)

