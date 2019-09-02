# Created by Daniël Jrifat

library(shiny)
library(shinydashboard)
library(plotly)
library(leaflet)
library(ggplot2)
library(scales)
library(ggmap)



# Call to source file
source('global.R')

# Header
header <- dashboardHeader(title = "BusinessGaming", 
                          dropdownMenu(type = "messages",
                                       messageItem(
                                         from = "RDW1",
                                         message = "Welkom bij onze presentatie")
                                       ),
                          dropdownMenu(type = "tasks", badgeStatus = "info",
                                       taskItem(value = 75, color = "green", "Project voortgang"))
                          ) # HEADER END

# Sidebar
sidebar <- dashboardSidebar(
  
  # Contains sidebar menu elements.
  # A tab is defined by calling menuItem
  sidebarMenu(
    menuItem("Home", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Heatmap Amsterdam", tabName = "heatRD", icon = icon("map")),
    menuItem("Choropleth", tabName = "choroSteef", icon = icon("map"))
  )
)

# Body
body <- dashboardBody(
  # Makes map fullscreen
  tags$style(type = "text/css", "#rdw1heatMap {height: calc(50vh - 2px) !important;}"),
  tags$style(".leaflet .legend i{
             width:10px;
             height: 10px;
             margin-top: 4px;
             }
             "
  ),
  
  # Container for al tab items
  # tab items are placed in fluidrows, to make sure al UI elements are aligned
  # UI elements are placed inside a box
  tabItems(
    tabItem(tabName = "dashboard", 
            fluidRow(
              # renders a reactive output as HTMl within an application page
              # param name="ibox"
              uiOutput("ibox")
            ),
            fluidRow(
              # welcome message within the dashboard homepage
              box(h3("Welkom"), status = "primary", width = "5", height = "350",
                  p("Welkom op het dasboard van IDOLAAD. Op dit dashboard staan de grafieken die gemaakt 
            zijn met de data die is aangeleverd door RDW. Met deze grafieken proberen wij te laten
                    zien hoe het wagenpark er op dit moment uit ziet en wat de verwachtingen zijn voor
                    de toekomst."),
                  br(),
                  p("Op dit moment is er op dit dashboard te vinden een Heatmap voor de brandstoftypes,
                    een map met welke type auto's er op welke postcode zitten en een grafiek om te kijken
                    naar de verschillen te kijken per dataset."),
                  br(),
                  p("Later is er op dit dashboard ook een verwachting te vinden van wat er met het
                    wagenpark in Nederland gaat gebeuren. Deze grafiek is op dit moment nog in 
                    ontwikkeling.")),
              # tabbed box within the dashboard homepage, containing 2 pie charts
              # pie charts contain percentage of all engine types withing the Netherlands
              tabBox(title = "", id = "ramiPercent",
                     # renders a renderplot within the application page
                     # param name="rdw1Rami"
                     tabPanel("Brandstof percentages", plotOutput("rdw1Rami")),
                     tabPanel("Brandstof percentages geplitsts", plotOutput("rdw1RamiSplit")))
            )
          ),
    
    
    
    # Heatmap
    # Tabitem conttaining a heatmap
    tabItem(tabName = "heatRD", 
            fluidRow(column(width = 12,
                            box(width = "12",
                                # Renders the map widget
                                # param="rdw1HeatMap"
                                leafletOutput("rdw1heatMap"),
                                absolutePanel(top=5, left=60, textInput("target_zone", "" , "Zoek een stad..."))
                              )
                            ),
                     column(width = 12, 
                            # tabbed box containing control widgets for the map, Delta lines and a tabel
                            # user is able to select a file to render on top of the heatmap
                            # TODO: CHANGE FILE TO DATE RANGE SELECTOR
                            tabBox(width = 12, title = "FOOBAR", id = "heatTab1",
                                   tabPanel("Control widgets",
                                            selectInput("file", "Kies 1e bestand", rdw1heatMapVar)),
                                   tabPanel("DeltaLine", "Delta van 2 bestanden", plotOutput("fooLine")),
                                   tabPanel("Tabel", "Verschil bestand 1 en bestand 3", DT::dataTableOutput("mytable"))
                                   )
                            )
                     )
            ),
    

    
    # Choropleth
    tabItem(tabName = "choroSteef",
                    tabBox(
                      title = "Choroplat",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset1", height = "300px", 
                      tabPanel("Provincie", "Nederland per provincie",leafletOutput("mapnormal")),
                      tabPanel("Stad", "Nederland per stad", leafletOutput("mappr"))
                    ),box(
                      title = "Widget",
                      selectInput("file1", "Kies eerste bestand",
                                  list("snapshot 1"= c("file1","file2","file3","file4","file5","file6","file7"))),
                      selectInput("file2", "Kies tweede bestand:",
                                  list("snapshot 1"= c("file1","file2","file3","file4","file5","file6","file7"))),
                      print("formule = bestand 2 - bestand 1 = aantal groei in auto's")
                    )
            )
                                                  
  )
  
  
  
) # BODY END



# Call to dashboard parts
dashboardPage(header,sidebar,body)

