# ================================== #
# Partie 3.1 - Fonctions Utilitaires #
# ================================== #

# la fonction is_poly0(p) indique si le polynôme p est nul
is_poly0 <- function(p) {
  if (length(p)==0) return(TRUE)
  else {
    for (i in seq_along(p)){
        if (p[[i]][1] != 0) return(FALSE)
      }
    }
  return(TRUE)
  }

# la fonction coeff revoie le coefficient d'un monome ou d'un polynome (mp)
# dans la boucle while la fonction verifie si mp est une liste (de monomes) ou un monome simple
coeff <- function(mp) {
  coeff_list <- list()
  for (i in seq_along(mp)) {
    monome <- mp[[i]]
    coeff <- monome[1]
    if (length(monome) != 0) {
      coeff_list <- append(coeff_list, list(coeff))
      }
  }
  return(coeff_list)
}

# la fonction degre renvoie le degre d'un monome ou d'un polynome (mp)
# dans la boucle while la fonction verifie si mp est une liste (de monomes) ou un monome simple
degre <- function(mp) {
  deg <- 0
  for (i in seq_along(mp)) {
    monome <- mp[[i]]
    coeff <- monome[2]
    if (coeff > deg) deg <- coeff
  }
  return(deg)
}

# la fonction poly2str renvoie une chaine de caractere representant le polynome creux p
poly2str <- function(p) {
  seq_monome_str <- c()
  for (i in seq_along(p)) {
    monome <- p[[i]]
    coefficient <- monome[1]
    puissance <- monome[2]
    if (length(monome) != 0) {
      if (coefficient < 0) monome_str <- sprintf("(%g)*x^%g", coefficient, puissance)
      else monome_str <- sprintf("%g*x^%g", coefficient, puissance)
      seq_monome_str <- c(seq_monome_str, monome_str)
    }
  }
  return(paste(seq_monome_str, collapse=" + "))
}