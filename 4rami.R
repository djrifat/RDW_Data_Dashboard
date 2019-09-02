# Created by Daniël Jrifat

allFiles <- c(postcode.lng1,postcode.lng2,postcode.lng3,postcode.lng4,postcode.lng5,postcode.lng6,postcode.lng7)


rdwFileDf1$Coder <- "rdw1"
rdwFileDf2$Coder <- "rdw2"
rdwFileDf3$Coder <- "rdw3"
rdwFileDf4$Coder <- "rdw4"
rdwFileDf5$Coder <- "rdw5"
rdwFileDf6$Coder <- "rdw6"
rdwFileDf7$Coder <- "rdw7"

MainText <- "Dit is het dashboard van het BusinessGaming team. Wij zijn fanatiek bezig met het manipuleren en visualiseren van data.
             Momenteel is dit de eerste versie van on dashboard, in de toekomst zal deze uitgebreid worden met verschillende features.
             "

rdwDataF <- rbind(rdwFileDf1,rdwFileDf2,rdwFileDf3,rdwFileDf4,rdwFileDf5,rdwFileDf6,rdwFileDf7)
rdwDataF <- rdwDataF[order(rdwDataF$POSTCODE_NUMERIEK),]

View(rdwDataF)

# Sloppy shit but it works
fA50 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1050))
fA51 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1051))
fA52 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1052))
fA53 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1053))
fA54 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1054))
fA55 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1055))
fA56 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1056))
fA57 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1057))
fA58 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1058))
fA59 <- length(which(rdwFileDf7$BRANDSTOFCODE == "A" & rdwFileDf7$POSTCODE_NUMERIEK == 1059))

B0 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1050))
B1 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1051))
B2 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1052))
B3 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1053))
B4 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1054))
B5 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1055))
B6 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1056))
B7 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1057))
B8 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1058))
B9 <- length(which(rdwFileDf7$BRANDSTOFCODE == "B" & rdwFileDf7$POSTCODE_NUMERIEK == 1059))

D0 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1050))
D1 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1051))
D2 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1052))
D3 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1053))
D4 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1054))
D5 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1055))
D6 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1056))
D7 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1057))
D8 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1058))
D9 <- length(which(rdwFileDf7$BRANDSTOFCODE == "D" & rdwFileDf7$POSTCODE_NUMERIEK == 1059))

E0 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1050))
E1 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1051))
E2 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1052))
E3 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1053))
E4 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1054))
E5 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1055))
E6 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1056))
E7 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1057))
E8 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1058))
E9 <- length(which(rdwFileDf7$BRANDSTOFCODE == "E" & rdwFileDf7$POSTCODE_NUMERIEK == 1059))

G0 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1050))
G1 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1051))
G2 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1052))
G3 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1053))
G4 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1054))
G5 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1055))
G6 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1056))
G7 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1057))
G8 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1058))
G9 <- length(which(rdwFileDf7$BRANDSTOFCODE == "G" & rdwFileDf7$POSTCODE_NUMERIEK == 1059))

H0 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1050))
H1 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1051))
H2 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1052))
H3 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1053))
H4 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1054))
H5 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1055))
H6 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1056))
H7 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1057))
H8 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1058))
H9 <- length(which(rdwFileDf7$BRANDSTOFCODE == "H" & rdwFileDf7$POSTCODE_NUMERIEK == 1059))





# Define zipcodes
postcode <- c("1050","1051","1052", "1053", "1054","1055", "1056", "1057", "1058", "1059")
# Define longitude
lng <- c(4.9027,4.8761780, 4.8780877, 4.8714036 , 4.8775244,
         4.8513085, 4.8504910, 4.8555550, 4.8549542, 4.8489460)
# Define lattitude
lat <- c(52.3666, 52.3844022, 52.3825162, 52.3711593, 52.3653749,
         52.3778697, 52.3716893, 52.36432523, 52.3609061, 52.3503824)
  
# Bind vars
A <- c(fA50,fA51,fA52,fA53,fA54,fA55,fA56,fA57,fA58,fA59)
B <- c(B0,B1,B2,B3,B4,B5,B6,B7,B8,B9)
D <- c(D0,D1,D2,D3,D4,D5,D6,D7,D8,D9)
E <- c(E0,E1,E2,E3,E4,E5,E6,E7,E8,E9)
G <- c(G0,G1,G2,G3,G4,G5,G6,G7,G8,G9)
H <- c(H0,H1,H2,H3,H4,H5,H6,H7,H8,H9)

# Create DF
postcode.lng7 <- data.frame(postcode, lng, lat, A, B,D,E,G,H)
  



