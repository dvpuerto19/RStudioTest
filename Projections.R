
#### para ver cantidad de NA dentro de cada variable
sum(is.na(auras.data$eobs.activity))
sum(is.na(auras.data$event.id))
sum(is.na(auras.data$timestamp))
sum(is.na(auras.data$location.long))
sum(is.na(auras.data$location.lat))



####Probando plots de coordenadas
plot(auras.data$location.long, auras.data$location.lat, na.rm =TRUE)
Daniela <- filter(auras.data,individual.local.identifier=="Cuba-7642")
plot(auras.data$location.long, auras.data$location.lat, na.rm =TRUE)

plot(Daniela$location.long, Daniela$location.lat, na.rm =TRUE)


Olivia <- filter(auras.data,individual.local.identifier=="Cuba-7615")
plot(Olivia$location.long, Olivia$location.lat, na.rm =TRUE)

####Ejemplo kami page 36/294  2.21 projections

library(sp)
# locations with longitude=0 and increasing latitude
P1 <- cbind(0, seq(0,90,10))
P1
# locations with longitude=1 and increasing latitude
P2 <- cbind(1, seq(0,90,10))
P2
# Once assuming the coordinates are Cartesian
# giving the distance in map units i.e. degrees
  round(diag(spDists(P1, P2, longlat=FALSE)), 1 )
  
 #matrizDeDistancias <-  spDists(P1, P2, longlat=FALSE)
#matrizDeDistancias
  # Once taking into account that the coordinates are
   # geographic giving the distance in km
    round(diag(spDists(P1, P2, longlat=TRUE)), 1)
  
