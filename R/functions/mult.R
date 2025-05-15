# ================================== #
# Partie 3.1 - Fonctions Utilitaires #
# ================================== #

mult_ext <- function(p, k) {
  for (i in seq_along(p)) {
    if (length(p[[i]]) != 0) {
      p[[i]][1] <- (p[[i]][1])*k
    }
  }
  return(p)
}



# =================================== #
# Partie 3.5 - Multiplication interne #
# =================================== #

# la fonction mult_monoms multiplie deux monômes m1 et m2
mult_monoms <- function(m1,m2) {
	coefm1 <- m1[1]
	degm1 <- m1[2]
	coefm2 <- m2[1]
	degm2 <- m2[2]
	produitcoefs <- coefm1*coefm2
	sommedegs <- degm1+degm2
	m <- c(produitcoefs,sommedegs)
	return(m)
}
# la fonction mult_poly_mono multiplie un polynôme p par un monôme m
# elle utilise mult_monoms
mult_poly_monoms <- function(p,m) {
	n <- length(p)
	q <- list()
	for (i in 1:n) {
		monomip <- p[[i]]
		produit <- mult_monoms(monomip,m)
		q <- append(q,list(produit))
	}
	return(q)
}
# la fonction mult multiplie deux polynomes p et q
# elle utilise la fonction mult_poly_mono et merge_monoms
mult <- function(p,q) {
	n <- length(q)
	pmq <- list()
	for (i in 1:n) {
		mq <- q[[i]]
		pmq <- append(pmq,mult_poly_monoms(p,mq))
		pmq <- merge_monoms(pmq)
	}
	return(pmq)
}