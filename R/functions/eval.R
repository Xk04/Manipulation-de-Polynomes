# ===================================================== #
# Partie 3.6 - Évaluation d’un polynôme p en un point x #
# ===================================================== #

# la fonction polyval calcule la somme de tous les termes ai * X^i
polyval <- function(p, x) {
    evaluation <- 0
    for (i in seq_along(p)) {
        monome <- p[[i]]
        coefficient <- monome[1]
        degre <- monome[2]
        evaluation <- evaluation + (coefficient*(x**degre))
    }
    return(evaluation)
}

# la fonction polyhorn evalue le polynome p en x avec la méthode de Horner
# elle transforme d'abord le polynome p en polynome dense avec la fonction formePleine
polyhorn <- function(p,x) {
	pd <- formePleine(p)
	nmax <- length(pd)
	k <- 1
	v <- pd[nmax]
	while (k <= (nmax-1)) {
		v <- v*x+pd[nmax-k]
		k <- k+1
	}
	return(v)
}