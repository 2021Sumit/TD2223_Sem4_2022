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

#discuss the type of variable: numerical or categorical

#ses i.e. socio-economic status is ordinal categorical

#id, and marks in reading, writing, math, science, social studies
#are discrete numerical

#gender, race, school type, program type are nominal categorical

#Visualization of this (see next step)

#https://openintro.shinyapps.io/ims-01-data-01/#section-visualizing-numerical-data.

#Read through the “Exploratory data analysis: 1 - Exploring categorical data” section at https://openintro.shinyapps.io/ims-02-explore-01/
#section-exploring-categorical-data to create bar plots. It may be best if you
#copy the commands in that tutorial in your project on ‘rcloud’ and then run them. Some
#additional examples for the ‘hsb2’ dataset are below.

p1 <- ggplot(hsb2, aes(x = race, fill = gender))
p1 + geom_bar(width = 0.5)
p1 + geom_bar(width = 0.5, position = "fill")

p2 <- ggplot(hsb2, aes(x = race, fill = prog))
p2 + geom_bar(width = 0.5)
p2 + geom_bar(width = 0.5, position = "fill")

# please create other bar plots to understand the relation
# between various categorical variables in this dataset






