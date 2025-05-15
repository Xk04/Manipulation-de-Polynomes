#GENERATION DE POLYNOMES
generationPoly <- function(n) {
  listePoly <- list()
  iteration <- seq(1:n)
  for (i in iteration) {
    polynome <- rand_poly(i, 0:sample(iteration, 1))
    listePoly <- append(listePoly, list(polynome))
  }
  return(listePoly)
}

generationVal <- function(n) {
  listeVal <- list()
  iteration <- seq(0:n)
  for (i in iteration) {
    val <- sample((-n):n, 1)
    listeVal <- append(listeVal, list(val))
  }
  return(listeVal)
}