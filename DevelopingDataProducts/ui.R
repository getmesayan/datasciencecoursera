
library(shiny)

#Load the SportAnalytics Package which contains the Bundesliga Standings
library(SportsAnalytics)
data("BundesligaFinalStandings")

#Pull the teams that will be put into dropdown
teams <- unique(BundesligaFinalStandings[,4])

shinyUI(pageWithSidebar(
  headerPanel("Bundesliga Stats"),
  #Select the team as an input
  sidebarPanel(
    selectInput("select", label = h3("Select Team"), 
                choices = levels(BundesligaFinalStandings$Team), 
                selected = "Bayern München")
    
  ),
  mainPanel(
    #Plots 2 graphs
    h3('And you get!'),
    h4('Team You have Selected'),
    verbatimTextOutput("oid1"),
    
    mainPanel(plotOutput("plot1")),
    
    mainPanel(plotOutput("plot2"))
    
  )
))