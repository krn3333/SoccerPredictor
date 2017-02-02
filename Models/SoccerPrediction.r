## Karan Chauhan
## Capstone Project

## This code determines displays the results of the analysis in the form of
## interactive GUI using the ShinyApps

library(shiny)
library(RMySQL)
library(leaflet)
library(plyr)
library(dplyr)
library(stringr)

Current = read.csv("Current.csv",header = T,na.strings = "?")

ui <- shinyUI(fluidPage(
  
  h1("Soccer Analysis and Prediction",style="color:orange"),
  br(),
  h3("Choose Home Team and Away Team : ",style="color:gray"),
  fluidRow(
    
    column(4,
           selectInput("home",
                       h4("Home Team :",style="color:green"),
                       c("All",
                         unique(as.character(sort(Current$HomeTeam))))
    )),
    column(4,
           selectInput("away",
                       h4("Away Team :",style="color:green"),
                       c("All",
                         unique(as.character(sort(Current$AwayTeam))))
    )
  )),
  
  fluidRow(
    h5(DT::dataTableOutput("table"),style="color:black")
  )
  
  
)
  
)


server <- shinyServer(function(input, output) {
  
  output$table <- DT::renderDataTable(DT::datatable({
    data <- Current
    if (input$home != "All") {
      data <- data[data$HomeTeam == input$home,]
    }
    if (input$away != "All") {
      data <- data[data$AwayTeam == input$away,]
    }
    
  })
      )

}
    

)

shinyApp(ui = ui, server = server)

