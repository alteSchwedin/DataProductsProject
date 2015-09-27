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
        
                # Generate a plot of the data. Also uses the inputs to build the 
                # plot label. Note that the dependencies on both the inputs and
                # the 'data' reactive expression are both tracked, and all expressions 
                # are called in the sequence implied by the dependency graph
                output$plot <- renderPlot({
                        dataset <- data()
                        
                        ggplot(dataset, 
                               aes(x = conc, y = rate, colour = state)) + 
                                geom_point(size = 3)
                        #hist(data(), 
                        #     main=paste('r', dist, '(', n, ')', sep=''))
                })
                
                # Show information of the data
                output$sum <- renderPrint({
                        summary(Puromycin)
                })
                
        }
)
