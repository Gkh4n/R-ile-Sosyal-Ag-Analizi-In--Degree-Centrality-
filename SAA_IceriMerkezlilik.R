# İçeri Merkezlilik (In-Degree Centrality)

library(igraph)
library(tidyverse)
library(reshape2)

floransali_aileler <- read.csv("veriSeti.txt")
floransali_aileler <- floransali_aileler[,2:3]

evlilik_agi <- graph.edgelist(as.matrix(floransali_aileler), directed = TRUE)
plot(evlilik_agi, vertex.size = 8, vertex.label.cex = .8, vertex.label.color = "black", vertex.color = "tomato", edge.arrow.size = 0.4)
degree(evlilik_agi)

V(evlilik_agi)$degree <- degree(evlilik_agi) # atama
plot(evlilik_agi,
     vertex.label.cex = .6,
     vertex.label.color = "black",
     vertex.size = V(evlilik_agi)$degree*3)




























