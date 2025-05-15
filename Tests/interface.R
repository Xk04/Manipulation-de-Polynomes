# ========================== #
# --- Interface de Tests --- #
# ========================== #
library("polynom")

#Récupération des fichiers de tests disponible dans le dossier functionsTests
seqChoice <- function() {
    current_dir <- getwd()
    files_dir <- paste0(current_dir, "/Tests/Checks/functionsTests/")
    filesList <- list.files(files_dir)
    n <- length(filesList)
    choices <- list()
    choices <- append(choices, list(c("0", "Exit")))
    for (i in seq(1:n)) {
        choices <- append(choices, list(c(i, filesList[[i]])))
    }
    return(choices)
}

catList <- function(liste) {
  cat(paste(liste, sep=", "), "\n")
}

startingUp <- function() {
    choiceTest <- seqChoice()
    n <- length(choiceTest)
    catList(choiceTest)
    cat("# ========================== #\n")
    while (TRUE) {
        choice <- as.integer(readline(prompt = "Choisir la fonction à tester : "))
        if (choice == 0) break
        else {
          test_path <- paste0(getwd(), "/Tests/Checks/functionsTests/", choiceTest[[choice+1]][2])
          polyNb <- as.integer(readline(prompt = "Choisir le nombre de polynôme à tester : "))
          afficherTest <- readline(prompt = "Afficher les tests justes (Y/N): ")
          if (afficherTest == "Y" || afficherTest == "y") afficherTest <- TRUE
          else if (afficherTest == "N" || afficherTest == "n") afficherTest <- FALSE
          source(test_path)
          test(polyNb, afficherTest)
          cat("\n# ========================== #\n\n")
          catList(choiceTest)
        }
    }
    cat("# ========== stop ========== #\n")
}
startingUp()
