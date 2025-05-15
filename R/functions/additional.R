# ======================================= #
# Partie - Supplément de fonctions utiles #
# ======================================= #

listePuissance <- function(mp) {
  listeP <- list()
  for (i in seq_along(mp)) {
    monome <- mp[[i]]
    puissance <- monome[2]
    if (length(monome) != 0) {
      listeP <- append(listeP, list(puissance))
      }
  }
  return(listeP)
}

vecteurPuissance <- function(mp) {
    vecP <- c()
    for (i in seq_along(mp)) {
        monome <- mp[[i]]
        puissance <- monome[2]
        if (length(monome) != 0) {
        vecP <- c(vecP, c(puissance))
        }
    }
    return(vecP)
}

cat_IntList <- function(tab) {
  res <- ""
  for (i in seq_along(tab)) {
    if (res=="") {
      res <- paste(tab[[i]])
    }
    else {
      res <- paste(res, ', ', tab[[i]], sep="")
    }
  }
  return(paste0('[', res, ']'))
}