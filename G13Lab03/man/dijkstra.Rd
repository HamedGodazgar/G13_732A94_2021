% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dijkstra_o.R
\name{dijkstra}
\alias{dijkstra}
\title{Shortest Path}
\source{
\url {https://en.wikipedia.org/wiki/Dijkstra\%27s_algorithm}
}
\usage{
dijkstra(graph, init_node)
}
\arguments{
\item{graph}{A graph.}

\item{init_node}{An initial node.}
}
\value{
The shortest path of \code{graph} and \code{init_node}.
}
\description{
Find the shortest path from the initial
node to every other node in the graph.
}
\details{
Should assert that the graph argument have the above
structure and that init_node is a numeric scalar that
exist in the graph.
}
\examples{
dijkstra(wiki_graph, 1)
dijkstra(wiki_graph, 3)
}
\seealso{
\url{https://en.wikipedia.org/wiki/Graph_(mathematics)}
}
