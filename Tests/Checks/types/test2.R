##Test de type 2 : (polynôme n°1) + (polyômes n°2)
test2 <- function(fctTest, polyList) {
  seqTests <- list()
  for (p1 in polyList) {
    for (p2 in polyList) {
      #On récupère une liste des éléments essentiels au test de p
      logs <- fctTest(p1, p2)
      seqTests <- append(seqTests, list(logs)) 
    }
  }
  return(seqTests)
}