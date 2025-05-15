importTest <- function(type) {
  source(paste0(getwd(), "/R/main.R"))
  source(paste0(getwd(), "/Tests/Checks/types/test", type, ".R"))
  source(paste0(getwd(), "/Tests/Checks/generators/generators.R"))
  source(paste0(getwd(), "/Tests/Checks/basic/basic_tests.R"))
  source(paste0(getwd(), "/Tests/Checks/check.R"))
}
importTest("2")

test <- function(n, showLogs) {
  test_aux <- function(p1, p2) {
    p1Plein <- formePleine(p1)
    p2Plein <- formePleine(p2)
    operation <- add(p1, p2)
    polyVersion <- polynomial(p1Plein) + polynomial(p2Plein)
    result <- polynomial(formePleine(operation)) == polyVersion
    showOp <- poly2str(operation)
    showPolyV <- poly2str(make_poly(polyVersion))
    return(list(result, poly2str(p1), poly2str(p2), showOp, showPolyV))
  }
  seqPoly <- append(generationPoly(n), exportBasicPoly())
  logs <- test2(test_aux, seqPoly)
  
  Verification(logs, "add()", "2", showLogs)
}