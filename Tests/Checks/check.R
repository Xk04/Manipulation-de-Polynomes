# ==================================== #
# --- Affichage de la verification --- #
# ==================================== #

affichageValeur <- function(test, typeTest) {
    #Type tests : 1 (1 seul param) - 2 (2 listes) - 11(1liste 1 entier)
    if (typeTest == "1") return(paste("polynome =", test[[2]], "\n"))
    else if (typeTest == "2") return(paste("polynome n°1 =", test[[2]], "\n", "polynome n°2 =", test[[3]], "\n"))
    else if (typeTest == "11") return(paste("polynome =", test[[2]], "\n", "valeur =", test[[3]], "\n"))
    else return("TypeTest non défini - veuillez choisir entre : 1, 2, 11")
}

affichageVerif <- function(test, numero, message, fct, typeTest) {
    n <- length(test)
    cat("|---------------------------------|\n",
        "-> test n°", numero, ":", "\n",
        "Etat :", message, "\n\n",
        "-> Détails des polynômes :\n",
        affichageValeur(test, typeTest),
        "\n-> Resultats du test :\n",
        "calcul de", fct, "=", test[[n-1]], "\n",
        "verification =", test[[n]], "\n",
        "|---------------------------------|\n\n\n")
  }

Verification <- function(seqTests, fct, typeTest, showLogs) {
    cat("---| Verification de la fonction :", fct, "|---\n\n")
    testOK <- 0
    n <- length(seqTests)
    for (i in seq_along(seqTests)) {
      test <- seqTests[[i]]
      result <- test[[1]]
      result_tmp <- if (is.na(result)) FALSE else result
      if (showLogs) {
        if (is.na(result)) affichageVerif(test, i, sprintf("Erreur"), fct, typeTest)
        else if (result == TRUE) affichageVerif(test, i, "Calcul Vrai - TRUE", fct, typeTest)
        else if (result == FALSE) affichageVerif(test, i, "Calcul Faux - FALSE", fct, typeTest)
      }
      if (result_tmp == TRUE) testOK <- testOK + 1
    }
    cat("|---------------------------------|\n", sprintf("->  %i/%i réussi(s)", testOK, n), "\n")
    if (testOK == n) cat("\n", "->  Tests Satisfaisants\n")
    else cat("\n", "->  Tests Insatisfaisants\n")
    cat("|---------------------------------|")
}