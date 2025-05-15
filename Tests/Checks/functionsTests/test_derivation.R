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
    operation <- derivation(p)
    polyVersion <- deriv(p)
    result <- polynomial(formePleine(operation)) == polynomial(formePleine(polyVersion))
    return(list(result, poly2str(p), poly2str(operation), poly2str(polyVersion)))
  }
  seqTests <- append(generationPoly(n), exportBasicPoly())
  logs <- test1(test_aux, seqTests)
  
  Verification(logs, "derivation()", "1", showLogs)
}