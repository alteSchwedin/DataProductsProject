library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Data Products Project - the Puromycin dataset"),
        sidebarPanel(
                selectInput("treat", "Treatment",
                             choices = c("Treated", "Untreated", "Both")),
                br(),
                p("Depending on your choice the plot displays the data
                  of treated, untreated or both types of cells. The
                  Information Tab gives more information on the whole
                  Puromycin dataset.")
        ),
        mainPanel(
                tabsetPanel(
                        tabPanel("Plot", plotOutput("plot")),
                        tabPanel("Information", 
                                 br(),
                                 p("The Puromycin data frame has 23 rows and 
                                   3 columns of the reaction velocity versus 
                                   substrate concentration in an enzymatic 
                                   reaction involving untreated cells or cells 
                                   treated with Puromycin."),
                                 br(),
                                 p("A summary of the Puromycin dataset is 
                                   shown below:"),
                                 br(),
                                 verbatimTextOutput("sum"))
                )
        )
))
