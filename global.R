# Created by Daniël Jrifat

totalEcars <<- length(which(rdwDataF$BRANDSTOFCODE == "E"))

Sfuelcount<- subset(fuelcount)

Sfuelcount$Pct <- Sfuelcount$freq / sum(Sfuelcount$freq)*100
Sfuelcount

rdw1heatMapVar <- c(
  # vars to select inputfile
  "bestand 1",
  "bestand 2",
  "bestand 3",
  "bestand 4",
  "bestand 5",
  "bestand 6",
  "bestand 7"
)


zip <- read.table(text = "Area       Zip   
                          Uithoorn   1422", header = T)


gc <- do.call(rbind, apply(zip, 1, 
                           function(x){
                             geocode(location = paste(x[2], x[1], sep = ", "), 
                                                source = "google")})
)

cbind(zip, gc)

View(zip)
