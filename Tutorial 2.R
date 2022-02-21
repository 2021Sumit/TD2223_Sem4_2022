#Some data sets to explore:
#climate70 (n=197), birds (n=19320), cpu (n=875)
?climate70 #view the description
climate70$latitude # access a specific variable ...
#you can use the same commands: summary, etc.
#from the last tutorial

# base R has commands for 'stem' plot,
#'hist'ogram, and 'mosaicplot' etc.
#Or you can use 'ggplot' + geom_*
#for example, try to compare whether data about
#different variables are "visually" similar or not

#the following will draw four boxplots on the
#same graph, but without lables, or other explanations!
boxplot(climate70$dx70_1948,
        climate70$dx70_2018,
        climate70$dx90_1948,
        climate70$dx90_2018)
#notice a command can be given on multiple lines.

#the command below will plot four histograms
#(with a really terrible choice of colors!)
#on the same graph
p1 <- hist(climate70$dx70_1948, 20)
p2 <- hist(climate70$dx70_2018, 20)
p3 <- hist(climate70$dx90_1948, 20)
p4 <- hist(climate70$dx90_2018, 20)
plot(p1, col=rgb(1,0,0, 1/4))
plot(p2, col=rgb(0,1,0, 1/4), add=T)
plot(p3, col=rgb(0,0,1, 1/4), add=T)
plot(p4, col=rgb(1,0,1, 1/4), add=T)

# If the data is transformed, does
# the number of modes change?
p4 <- hist(log(climate70$dx90_2018), 20)
p4 <- hist(climate70$dx90_2018, 20)
# How about some other transformation?
