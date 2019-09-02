

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  
  # Home page infoBoxes
  output$ibox <- renderUI({
    # List of boxes
    list(
      infoBox("Electrische auto's Amsterdam", totalEcars, icon = icon("car")),
      infoBox("Ingeladen bestanden", 7, icon = icon("file")),
      infoBox("Aantal grafieken", 4, icon = icon("signal"))
    )
  })

  
  fileToLoad <- reactive({
    switch(input$file,
           "bestand 1" = postcode.lng1,
           "bestand 2" = postcode.lng2,
           "bestand 3" = postcode.lng3,
           "bestand 4" = postcode.lng4,
           "bestand 5" = postcode.lng5,
           "bestand 6" = postcode.lng6,
           "bestand 7" = postcode.lng7
    )
  })
  
  
  mnpopup <- paste0("<b>","Postcode: ", postcode.lng1$postcode, br(),
                    "<b>", "Aantal: ", postcode.lng1$B, br(),
                    "<b>", "Motortype: ", "Benzine", br())
  
  observe({
    leafletProxy("rdw1heatMap", data=fileToLoad()) %>%
      addCircles (~lng, ~lat, weight = 2, opacity = .8, radius = fileToLoad()$B / 10, color="#ffa500",stroke = TRUE, popup = mnpopup) %>%
      addCircles (~postcode.lng4$lng, postcode.lng4$lat, weight = 2, opacity = .8, radius = postcode.lng4$B / 10, color="#0a55ce",stroke = TRUE, popup = mnpopup) 
      # addCircles (~lng, ~lat, weight = 1, radius = fileToLoad2()$B / 10, color="#00ff2a",stroke = TRUE, label = ~htmlEscape(postcode))
  })
  
  
  output$rdw1heatMap <- renderLeaflet({
    # Zoek functie
    if(input$target_zone=="Zoek een stad..."){
      ZOOM=2
      LAT=0
      LONG=0
    }else{
      target_pos=geocode(input$target_zone)
      LAT=target_pos$lat
      LONG=target_pos$lon
      ZOOM=12
    }
    
    leaflet(input$file) %>%
      setView(lng=LONG, lat=LAT, zoom=ZOOM) %>% 
      addTiles()  
  })
  
  output$mytable = DT::renderDataTable({
    postcode.lng1
  })
  
  output$fooLine <- renderPlot({
    ggplot (economics %>% mutate ( duration = uempmed / mean(uempmed), norm_unemployed = unemploy / mean(unemploy)), aes (x = date)) +
      geom_line ( aes (y = duration), color = "gold4" ) +
      geom_line ( aes (y = norm_unemployed), color = "purple") 
  })
  
  
  
str(economics)
  

  #############################
  # Choropleth
 
  output$mapnormal <- renderLeaflet({leaflet(nederland) %>%
      setView(4.89, 52.37,6)        %>% addPolygons( fillColor = ~pal(nederland@data$n),
                                                     weight = 1.8,
                                                     opacity = 1,
                                                     smoothFactor = 1.5,
                                                     color = "White",
                                                     dashArray = "8",
                                                     fillOpacity = 1,
                                                     popup = popup,
                                                     highlight = highlightOptions(
                                                       weight = 5,
                                                       color = "white",
                                                       dashArray = "",
                                                       fillOpacity = 1,
                                                       bringToFront = TRUE))%>%
      addLegend("bottomright", pal = pal, values = nederland@data$n,
                title = "Legenda")
  })
  
  output$mappr <- renderLeaflet({leaflet(provinciesNL) %>%
      setView(4.89, 52.37,7) %>% addPolygons( fillColor = "grey",
                                              weight = 1.8,
                                              opacity = 1,
                                              smoothFactor = 1.5,
                                              color = "White",
                                              dashArray = "6",
                                              fillOpacity = 1,
                                              popup = Popupnames,
                                              highlight = highlightOptions(
                                                weight = 5,
                                                color = "white",
                                                dashArray = "",
                                                fillOpacity = 1,
                                                bringToFront = TRUE))
  })
  
  
  output$rdw1Rami <- renderPlot({
    pie + geom_text(aes(y = Pct/5 + c(0, cumsum(Pct)[-length(Pct)]), label = percent(Pct/100)), size=3 ) +
      #facet_grid(~Pct) +
      ggtitle("Aantal auto's per type brandstof") +
      labs(x="SUM aantal auto's in (%)")
  })
  
  output$rdw1RamiSplit <- renderPlot({
    pie + geom_text(aes(y = Pct/5 + c(0, cumsum(Pct)[-length(Pct)]), label = percent(Pct/100)), size=3 ) +
      facet_grid(~Pct) +
      ggtitle("Aantal auto's per type Brandstof") +
      labs(x="SUM aantal auto's in (%)",y="Brandstof label")
  })
  
  # ????
  server = function(input, output) {
    output$nederland@data <- ({(input$n - input$n )
    })
  } 
  
})



