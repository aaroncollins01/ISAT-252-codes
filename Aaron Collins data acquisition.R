cars <- read.csv("cars.csv")
these_cars <- cars$What.is.your.favorite.car.brand.
Color_freq <- table(these_cars)
barplot(Color_freq)
barplot(Color_freq,main="Favorite Car")
barplot(Color_freq,main="Favorite Car",xlab="car brand",ylab="Frequency")