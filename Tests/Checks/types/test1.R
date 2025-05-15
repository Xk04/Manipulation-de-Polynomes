##Test de type 1 : (1 liste de monômes)
test1 <- function(fctTest, polyList) {
  seqTests <- list()
  for (p in polyList) {
    #On récupère une liste des éléments essentiels au test de p
    logs <- fctTest(p)
    seqTests <- append(seqTests, list(logs))
  }
  return(seqTests)
}