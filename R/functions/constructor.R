# ========================== #
# Partie 3.2 - Constructeurs #
# ========================== #

#PASSAGE DE LA FORME PLEINE A LA FORME CREUSE

# A partir d’un polynôme x un polynôme en forme pleine, représenté par un vecteur qui contient les coefficients de chaque termes où le degré de chaque terme est l’indice de sa position dans le vecteur, la fonction construit le même polynôme mais sous forme creuse, représenté par une liste de monômes, un monôme est un couple, qui contient le coefficient et le degré du terme.
# Entrée : x un polynôme en forme pleine, représenté par un vecteur qui contient les coefficients de chaque termes où le degré de chaque terme est l’indice de sa position dans le vecteur
# Sortie : poly_creux le polynôme x transforme en forme creuse, représenté par une liste de monômes, un monôme est un couple, qui contient le coefficient et le degré du terme

make_poly <- function(x) {
    poly_creux <- list()
    len <- length(x)
    for (i in len:1) {
      elt <- x[[i]]
      if (elt !=0) {
        poly_creux <- append(poly_creux, list(c(elt, (i-1))))
      }
    }
    return(poly_creux)
}

#PASSAGE DE LA FORME CREUSE A LA FORME PLEINE

# A partir du polynôme formeCreuse, en forme creuse, représenté par une liste de monômes, un monôme est un couple, qui contient le coefficient et le degré du terme, cette fonction le transforme en forme pleine, représenté par un vecteur qui contient les coefficients de chaque termes où le degré de chaque terme est l’indice de sa position dans le vecteur.
# Entrée : formeCreuse un polynôme en forme creuse, représenté par une liste de monômes, un monôme est un couple, qui contient le coefficient et le degré du terme
# Sortie : plein le même polynôme mais en forme pleine, représenté par un vecteur qui contient les coefficients de chaque termes où le degré de chaque terme est l’indice de sa position dans le vecteur

formePleine <- function(formeCreuse) {
  n <- degre(formeCreuse)
  plein <- replicate(n+1, 0)
  for (id_monome in seq_along(formeCreuse)) {
    monome <- formeCreuse[[id_monome]]
    i <- 1+monome[2]
    plein[i] <- plein[i] + monome[1]
  }
  return(plein)
}

# GENERATION DE POLYNOMES ALEATOIRES

# la fonction rand_poly génere un polynôme aléatoire pc de degré inférieur à n et dont les coefficients sont tirés dans le vecteur coeffs
rand_poly <- function(n, coeff) {
  max <- n
  random_poly_list <- list()
  while ((max >= 0)) {
    #Choix
    constante <- sample(coeff, 1)
    puissance <- sample(0:max, 1)
    #Construction du nouveau monome si la constante est différente de 0
    if (constante != 0) {
      random_poly_list <- append(random_poly_list, list(c(constante, puissance)))
    }
    #On plafonne la fct hasard par rapport au nombre qui vient d'être tiré (exclu)
    max <- puissance-1
  }
  if (length(random_poly_list) != 0) return(random_poly_list)
  else  return(list(c(0, 0)))
}