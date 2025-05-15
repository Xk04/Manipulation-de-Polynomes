# ===================================== #
# Partie 3.3 - Addition et soustraction #
# ===================================== #

# A partir d’un polynôme p en forme creuse et d’un paramètre booléen, cette fonction tri les monômes du polynôme p par ordre croissant et les ordonne dans le polynôme tri qui est le polynôme p où les monômes ont été tries par ordre croissant.
# Entrée : p un polynôme en forme creuse, représenté par une liste de monômes et DESC un booléen
# Sortie : tri un nouveau polynôme où tous les monômes ont été tries par ordre croissant
sort_monoms <- function(p, DESC=TRUE) {
  tri_par_ind <- sort(vecteurPuissance(p), index.return = TRUE, decreasing = DESC)$ix
  tri <- list()
  for (i in tri_par_ind) {
    monome <- p[[i]]
    tri <- append(tri, list(monome))
  }
  return(tri)
}

# A partir du polynôme p, représenté en forme creuse avec une liste de monômes, et trie par ordre croissant, cette fonction additionne tous les monômes de même degré de p et renvoie le polynôme p compacté.
# Entrée : un polynôme p en forme creuse, représenté par une liste de monômes où tous ses monômes sont triés par ordre croissant
# Sortie : le même polynôme p dans lequel tous les monômes de même degré ont été additionnés
merge_monoms <- function(p) {
  p <- sort_monoms(p)
  i <- 1
  len_p <- length(p)
  while (i <= (len_p-1)) {
    monome1 <- p[[i]]
    monome2 <- p[[i+1]]
    if (monome1[2] == monome2[2]) {
      #on applique l'addition de monome de même degré
      p[[i]][1] <- monome1[1] + monome2[1]
      #on réduit la liste, puisque le monôme i+1 vient d'être ajouter
      p <- p[-(i+1)]
      len_p <- length(p)
    }
    else i <- i+1
  }
  return(p)
}

# A partir de deux polynômes p1 et p2, représentés en forme creuse avec une liste de monômes, cette fonction effectue l’addition de chaque monôme de p1 avec chaque monôme de p2 qui ont le même degré.
# Entrée : p1 et p2, deux polynômes en forme creuse, représentés par une liste de monômes
# Sortie : un polynôme concat_p1_p2, en forme creuse qui correspond à la somme des monômes de p1 et des monômes de p2
add <- function(p1, p2) {
    concat_p1_p2 <- append(p1, p2)
    return(merge_monoms(concat_p1_p2))
}

# A partir de deux polynômes p1 et p2, représentés en forme creuse avec une liste de monômes, cette fonction effectue la soustraction de chaque monôme de p1 avec chaque monôme de p2 qui ont le même degré. Elle fait la même chose que add(p1,p2) sauf qu’elle additionne deux polynômes en changeant le signe de chaque monôme de p2 pour ensuite l’additionner avec p1.
# Entrée : p1 et p2, deux polynômes en forme creuse, représentés par une liste de monômes
# Sortie : un polynôme concat_p1_p2, en forme creuse qui correspond à la soustraction des monômes de p1 et des monômes de p2
sub <- function(p,q) {
	n <- length(q)
	qneg <- list()
	# On change de signe le polynome q
	for (i in 1:n) {
		monom <- q[[i]]
		coef <- monom[1]
		deg <- monom[2]
		qneg <- append(qneg,list(c(-coef,deg)))
	}
	pq <- append(p,qneg)
	dpq <- merge_monoms(pq)
	return(dpq)
}