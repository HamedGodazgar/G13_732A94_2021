
library(igraph)

dijkstra <- function(graph,init_node){
  set.seed(500)
  el <- matrix(c(graph$v1,graph$v2), ncol=2)
  g <- graph_from_edgelist(el)
  oldpar <- par(mar = c(1,1,1,1))
  plot(g, edge.label = graph$w)
  par(oldpar)
  graph1 <- graph[!duplicated(graph$v1), ]
  g2 <- add_edges(make_empty_graph(length(graph1$w)), t(el[,1:2]), weight=graph$w)
  distances <- distances(g2, mode="out")
  distances[,init_node]
}


