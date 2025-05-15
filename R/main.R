# ========================= #
# --- Partie Principale --- #
# ========================= #

#Importation de toutes les fonctions du projet
importFunctions <- function() {
  current_dir <- getwd()
  files_dir <- paste0(current_dir, "/R/functions/")
  files <- list.files(files_dir)
  for (f in files) {
    filewd <- paste0(files_dir, f)
    source(filewd)
  }
}
importFunctions()

