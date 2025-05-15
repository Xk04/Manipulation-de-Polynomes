##Test de type 11 : (1 liste de monômes) + (1 liste de valeurs)
test11 <- function(fctTest, polyList, valList) {
  seqTests <- list()
  for (p in polyList) {
    for (k in valList) {
      #On récupère une liste des éléments essentiels au test de p
      logs <- fctTest(p, k)
      seqTests <- append(seqTests, list(logs))
    }
  }
  return(seqTests)
}
