library(shiny)
library(SportsAnalytics)
library(dplyr)

data("BundesligaFinalStandings")
teams <- unique(BundesligaFinalStandings[,4])

shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$select})
    
    output$plot1 <- renderPlot({
      teamdata <- filter(BundesligaFinalStandings, Team == input$select)
      barplot(teamdata$GoalsScored, names.arg = teamdata$Season, 
              main = "Goals Scored per Season", xlab = "Season", ylab = "Goals Scored")
      
    })
    
    output$plot2 <- renderPlot({
      teamdata <- filter(BundesligaFinalStandings, Team == input$select)
      pairs(~Position + GoalsScored + GoalsAgainst + PointsScored, 
            data = teamdata, main = "Pair Plot for Team")
      
    })
  }
)
