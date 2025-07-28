#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(
    # Application title
    titlePanel("Budesliga Team Analyzer"),
    navset_tab(
      nav_panel("Standard Stats",
                # Sidebar with a slider input for number of bins
                sidebarLayout(
                  sidebarPanel(
                    selectInput("selector_x",
                                "X Variable:",
                                choices=names(df)[2:32],
                                selected="goals",
                                width = "200px"
                    ),
                    selectInput("selector_y",
                                "Y Variable:",
                                choices=names(df)[2:32],
                                selected="progressive_passes",
                                width="200px"
                    )
                  ),    
                  # Show a plot of the generated distribution
                  mainPanel(
                    plotlyOutput("distPlot")
                  )
                ),
      ),
      nav_panel("Tab 2", "Tab 2 Content"),
    id="tab"
    ),
)
