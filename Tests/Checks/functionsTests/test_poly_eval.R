importTest <- function(type) {
  source(paste0(getwd(), "/R/main.R"))
  source(paste0(getwd(), "/Tests/Checks/types/test", type, ".R"))
  source(paste0(getwd(), "/Tests/Checks/generators/generators.R"))
  source(paste0(getwd(), "/Tests/Checks/basic/basic_tests.R"))
  source(paste0(getwd(), "/Tests/Checks/check.R"))
}
importTest("11")

test <- function(n, showLogs) {
  test_aux <- function(p, x) {
    pPlein <- formePleine(p)
    operation <- polyval(p, x)
    polyVersion <- predict(polynomial(pPlein), x)
    result <- operation == polyVersion

    return(list(result, poly2str(p), x, operation, polyVersion))
  }
  seqPoly <- append(generationPoly(n), exportBasicPoly())
  seqVal <- append(generationVal(n), exportBasicVal())
  logs <- test11(test_aux, seqPoly, seqVal)
  
  Verification(logs, "polyval()", "11", showLogs)
}