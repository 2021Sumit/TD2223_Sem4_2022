#install packages for this tutorial
install.pacages("tidyverse")
install.pacages("openintro")

#load both
library(tidyverse)
library(openintro)
#openintro loads many dataseys

#explore stent data that is part of the openintro package
stent30
stent365

#some simple commands. Discuss what they mean
table(stent30)
summary(stent30)
table(stent365)
summary(stent365)

which(stent365[,2]== "stroke" )
which(stent365[,2]=="stroke" & stent30[,2]=="stroke" )
which(stent365[,2]=="no event" & stent30[,2]=="stroke" )
which(stent365[,2]!="stroke" & stent30[,2]=="stroke" )

#look at High School and Beyond dataset from the openintro package
hsb2
attributes(hsb2)

#glimpse function
glimpse(hsb2)
#shows the list of the variables in the data set and
#also see what the values stored in these variables look like.
