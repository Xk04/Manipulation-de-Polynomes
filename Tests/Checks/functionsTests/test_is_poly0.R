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
    pPlein <- formePleine(p)
    operation <- is_poly0(p)
    polyVersion <- (max(pPlein)==0)
    result <- operation == polyVersion
    return(list(result, poly2str(p), operation, polyVersion))
  }
  seqTests <- append(generationPoly(n), exportBasicPoly())
  logs <- test1(test_aux, seqTests)
  
  Verification(logs, "is_poly0()", "1", showLogs)
}