importTest <- function(type) {
  source(paste0(getwd(), "/R/main.R"))
  source(paste0(getwd(), "/Tests/Checks/types/test", type, ".R"))
  source(paste0(getwd(), "/Tests/Checks/generators/generators.R"))
  source(paste0(getwd(), "/Tests/Checks/basic/basic_tests.R"))
  source(paste0(getwd(), "/Tests/Checks/check.R"))
}
importTest("1")

test <- function(n, showLogs) {
  test_aux <- function(p) {
    pPlein <- vecteurPuissance(p)
    operation <- degre(p)
    polyVersion <- max(pPlein)
    result <- operation == polyVersion
    return(list(result, poly2str(p), operation, polyVersion))
  }
  seqTests <- append(generationPoly(n), exportBasicPoly())
  logs <- test1(test_aux, seqTests)
  
  Verification(logs, "degre()", "1", showLogs)
}