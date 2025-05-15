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
    operation <- mult_ext(p, x)
    polyVersion <- polynomial(pPlein)*x
    result <- polynomial(formePleine(operation)) == polyVersion
    showOp <- poly2str(operation)
    showPolyV <- poly2str(make_poly(operation))
    return(list(result, poly2str(p), x, showOp, polyVersion))
  }
  seqPoly <- append(generationPoly(n), exportBasicPoly())
  seqVal <- append(generationVal(n), exportBasicVal())
  logs <- test11(test_aux, seqPoly, seqVal)
  
  Verification(logs, "mult_ext()", "11", showLogs)
}