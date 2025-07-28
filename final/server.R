#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

# Define server logic required to draw a histogram
function(input, output, session) {
    output$distPlot <- renderPlotly({
        ggplotly(ggplot(data = df,
                        aes_string(x=input$selector_x,
                                   y=input$selector_y),
            text = paste('X:', input$selector_x, '\n',
                       'Y:', input$selector_y, sep="")) + 
              geom_point(aes(col= team)) +
              theme_minimal() +
              labs(x = input$selector_x,
                   y = input$selector_y, 
                   colour="Teams")
        )
    })
}
