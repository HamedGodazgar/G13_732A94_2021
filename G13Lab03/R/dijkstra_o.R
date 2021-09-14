#' Shortest Path
#' @param graph A graph.
#' @param init_node An initial node.
#' @description Find the shortest path from the initial 
#'              node to every other node in the graph.
#' @return The shortest path of \code{graph} and \code{init_node}.
#' @source \url {https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm}
#' @seealso \url{https://en.wikipedia.org/wiki/Graph_(mathematics}
#' @details Should assert that the graph argument have the above 
#'          structure and that init_node is a numeric scalar that
#'          exist in the graph.
#' @examples
#' dijkstra(wiki_graph, 1)
#' dijkstra(wiki_graph, 3)
#' 
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


