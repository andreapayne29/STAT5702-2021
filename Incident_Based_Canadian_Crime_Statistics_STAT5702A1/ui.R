#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Incident-Based Canadian Crime Statistics From 2000 to 2019"),
    
    #adding radio buttons for decade choice
    radioButtons("dataSource",
                 c("2000-2009 Data" = "DataFile2000",
                   "2010-2019 Data" = "DataFile2010")),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("crime",  "Violation", c("Total Violations", "Total Violent Criminal Code Violations", "Total Property Crime Violations", "Total Other Criminal Code Violations", "Total Impaired Driving", "Total Other Criminal Code Traffic Violations", "Total Drug Violations", "Youth Criminal Justice Act", "Total Other Federal Statutes")),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
