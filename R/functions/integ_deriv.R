# ====================================== #
# Partie 3.4 - Integration et Derivation #
# ====================================== #

# la fonction integ retourne une primitive du polynôme p
integration <- function(p) {
	n <- length(p)
	intp <- list()
	for (i in 1:n) {
		monom <- p[[i]]
		coef <- monom[1]
		deg <- monom[2]
		intdeg <- deg+1
		intcoef <- coef/intdeg
		intmonom <- c(intcoef,intdeg)
		intp <- append(intp,list(intmonom))
	}
	return(intp)
}

# la fonction deriv retourne le polynôme dérivé du polynôme p
derivation <- function(p) {
	n <- length(p)
	dp <- list()
	for (i in 1:n) {
		monom <- p[[i]]
		coef <- monom[1]
		deg <- monom[2]
		if (deg > 0) {
			ddeg <- deg-1
			dcoef <- coef*deg
			dmonom <- c(dcoef,ddeg)
			dp <- append(dp,list(dmonom))
		}
	}
	return(dp)
}