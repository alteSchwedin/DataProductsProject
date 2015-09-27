library(shiny)
library(datasets)
library(ggplot2)

shinyServer(
        function(input, output) {
        
                data <- reactive({  
                        switch(input$treat,
                        "Treated" = Puromycin[Puromycin$state == "treated",],
                        "Untreated" = Puromycin[Puromycin$state == "untreated",],
                        "Both" = Puromycin)
                        
                })
        
                # Generate a plot of the data.
                output$plot <- renderPlot({
                        dataset <- data()
                        
                        ggplot(dataset, 
                               aes(x = conc, y = rate, colour = state)) + 
                                geom_point(size = 3) + 
                                xlab("Substrate concentration (ppm)") +
                                ylab("Reaction velocity (counts/min/min)")
                })
                
                # Show summary of the data
                output$sum <- renderPrint({
                        summary(Puromycin)
                })
                
        }
)
