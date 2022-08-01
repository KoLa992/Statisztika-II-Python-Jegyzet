library(ggplot2)

mu = 2
szigma = 27

Ertekek <- seq(-100, 100)
Gyakorisag <- dnorm(Ertekek, mean = mu, sd = szigma)

MyDF<-data.frame(x=Ertekek,y=Gyakorisag)
p<-qplot(x=MyDF$x,y=MyDF$y,geom="line") 

shade <- rbind(c(50,0), subset(MyDF, x > 50), c(MyDF[nrow(MyDF), "x"], 0))

p + geom_polygon(data = shade, aes(x, y))


p<-qplot(x=MyDF$x,y=MyDF$y,geom="line") 

shade <- rbind(c(MyDF[1, "x"], 0), subset(MyDF, x < 50), c(50,0))

p + geom_polygon(data = shade, aes(x, y))
