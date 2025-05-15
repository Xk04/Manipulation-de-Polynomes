# Documentation des fonctions principales

**Menu principal : [revenir à l'accueil](/readme.md)**

## 📋 **Contenu du Projet**

### 🚀 *Fonctions principales*

------------------------------------------------------------------------
#### *Partie 3.1 - Fonctions Utilitaires*

> #### `is_poly0(p)`

Vérifie si un polynôme est nul.

-   **Paramètres :**
    -   `p` : Le polynôme à vérifier.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...)
-   **Retour :**
    -   `TRUE` si le polynôme est nul, `FALSE` sinon.
    -   **Type :** booléen.

> #### `degre(p)`

Calcule le degré d'un polynôme.

-   **Paramètres :**
    -   `p` : Le polynôme dont on cherche le degré.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...)
-   **Retour :**
    -   Degré du polynôme.
    -   **Type :** entier.

> #### `coeff(p)`

Extrait les coefficients du polynôme.

-   **Paramètres :**
    -   `p` : Le polynôme.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...)
-   **Retour :**
    -   Liste des coefficients.
    -   **Type :** vecteur d'entiers.

> #### `poly2str(p)`

Convertit un polynôme en une chaîne lisible.

-   **Paramètres :**
    -   `p` : Le polynôme à convertir.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...)
-   **Retour :**
    -   Représentation textuelle du polynôme.
    -   **Type :** chaîne de caractères.

**Exemple :**

``` r
poly2str(list(c(3,2), c(-2, 0)))
# Retour : "3x^2 - 2"
```

> #### `mult_ext(p, k)`

Multiplie tous les coefficients d'un polynôme par une constante.

-   **Paramètres :**
    -   `p` : Le polynôme.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...)
    -   `k` : La constante de multiplication.
    -   **Type :** numérique.
-   **Retour :**
    -   Polynôme résultant.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...)

------------------------------------------------------------------------
#### *Partie 3.2 - Constructeurs*

> #### `make_poly(p)`

Construit un polynôme à partir d'un vecteur.

-   **Paramètres :**
    -   `p` : Liste des coefficients.
    -   **Type :** vecteur numérique.
-   **Retour :**
    -   Polynôme creux.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

> #### `formePleine(p)`

Construit un polynôme plein à partir d'un polynôme creux. (Cette fonction est supplémentaire au devoir, elle a été créer afin d'automatiser des tests)

-   **Paramètres :**
    -   `p` : polynôme
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
-   **Retour :**
    -   Polynôme plein.
    -   **Type :** vecteur numérique

> #### `rand_poly(n, coeff)`

Génère un polynôme aléatoire.

-   **Paramètres :**
    -   `n` : Le degré maximal.
    -   **Type :** entier.
    -   `coeff` : Valeur maximale des coefficients.
    -   **Type :** numérique.
-   **Retour :**
    -   Polynôme généré aléatoirement.
    -   **Type :** vecteur numérique.
    
**Exemple :**

``` r
poly2str(rand_poly(5,0:3))
poly2str(rand_poly(10,0:1))

# Retours :
# [1] "2*X^3 + 1*X^2 + 1*X^0"
#[1] "1*X^9 + 1*X^7 + 1*X^5 + 1*X^4 + 1*X^2"
```
------------------------------------------------------------------------
#### *Partie 3.3 -* Addition et soustraction

> #### `sort_monoms(p, DESC)`

Trie les monômes du polynôme.

-   **Paramètres :**
    -   `p` : Le polynôme à trier.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
    -   `DESC` : Si `TRUE`, trie dans l'ordre décroissant.
    -   **Type :** booléen.
-   **Retour :**
    -   Polynôme trié.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

> #### `merge_monoms(p)`

Fusionne les monômes ayant des exposants identiques.

-   **Paramètres :**
    -   `p` : Polynôme à fusionner.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
-   **Retour :**
    -   Polynôme avec monômes fusionnés.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

> #### `add(p1, p2)`

Additionne deux polynômes.

-   **Paramètres :**
    -   `p1` : Premier polynôme.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
    -   `p2` : Deuxième polynôme.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
-   **Retour :**
    -   Polynôme résultant de l'addition.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

**Exemple :**

``` r
p <- list(c(3,2), c(-2, 0))

q <- list(c(3,1), c(1, 0))

add(p, q)
# Retour : list(c(3,2), c(3,1), c(-1, 0))
```

> #### `sub(p1, p2)`

Soustrait deux polynômes.

-   **Paramètres :**
    -   `p1` : Premier polynôme.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
    -   `p2` : Deuxième polynôme.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
-   **Retour :**
    -   Polynôme résultant de l'addition.
    -   **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

**Exemple :**

``` r
p <- list(c(3,2), c(-2, 0))

q <- list(c(3,1), c(1, 0))

sub(p, q)
# Retour : list(c(3,2), c(-3,1), c(-3, 0))
```
------------------------------------------------------------------------

#### *Partie 3.4 -* Intégration et dérivation

> #### `integration(p)`
Calcule la primitive d'un polynôme.

- **Paramètres :**
  - `p` : Le polynôme à intégrer.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
- **Retour :**
  - Polynôme correspondant à la primitive.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

> #### `derivation(p)`
Calcule la dérivée d'un polynôme.

- **Paramètres :**
  - `p` : Le polynôme à dériver.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
- **Retour :**
  - Polynôme correspondant à la dérivée.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

------------------------------------------------------------------------

#### *Partie 3.5 -* Multiplication interne

> #### `mult(m1, m2)`
Multiplie deux monômes.

- **Paramètres :**
  - `m1` : Premier monôme.
  - **Type :** polynôme creux : format : list(c(coeff, puissance)) ; longueur = 2
  - `m2` : Deuxième monôme.
  - **Type :** polynôme creux : format : list(c(coeff, puissance)) ; longueur = 2
- **Retour :**
  - Monôme résultant de la multiplication.
  - **Type :** polynôme creux : format : list(c(coeff, puissance)) ; longueur = 2

> #### `mult_monoms(p, m)`
Multiplie un polynôme par un monôme.

- **Paramètres :**
  - `p` : Le polynôme.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
  - `m` : Le monôme.
  - **Type :** polynôme creux : format : list(c(coeff, puissance)) ; longueur = 2
- **Retour :**
  - Polynôme résultant de la multiplication.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

> #### `mult_poly_monoms(p, q)`
Multiplie deux polynômes.

- **Paramètres :**
  - `p` : Premier polynôme.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
  - `q` : Deuxième polynôme.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
- **Retour :**
  - Polynôme résultant de la multiplication.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

------------------------------------------------------------------------
#### *Partie 3.6 -* Évaluation d’un polynôme p en un point x

> #### `polyval(p, x)`
Évalue un polynôme en une valeur donnée.

- **Paramètres :**
  - `p` : Le polynôme à évaluer.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
  - `x` : La valeur en laquelle évaluer le polynôme.
  - **Type :** numérique.
- **Retour :**
  - Résultat de l'évaluation.
  - **Type :** numérique.

> #### `polyhorn(p, x)`
Évalue un polynôme en une valeur donnée à l'aide du schéma de Horner.

- **Paramètres :**
  - `p` : Le polynôme à évaluer.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
  - `x` : La valeur en laquelle évaluer le polynôme.
  - **Type :** numérique.
- **Retour :**
  - Résultat de l'évaluation.
  - **Type :** numérique.

> #### `dessiner(p, x)`
Affiche une représentation graphique du polynôme.

- **Paramètres :**
  - `p` : Le polynôme à évaluer.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).
  - `x` : La valeur en laquelle évaluer le polynôme.
  - **Type :** numérique.
- **Retour :**
  - Une courbe représentant le polynôme.
  - **Type :** graphique.

------------------------------------------------------------------------
#### *Partie (+) -* Suppléments

> #### `listePuissance(mp)`
Permet de récupérer la liste des puissance du polynôme, c'est à dire la puissance de chaque monome

- **Paramètres :**
  - `p` : Le polynôme à évaluer.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

- **Retour :**
  - Une liste des puissances présentes dans le polynômes
  - **Type :** liste d'entiers

> #### `vecteurPuissance(mp)`
Permet de récupérer le vecteur des puissance du polynôme, c'est à dire la puissance de chaque monome

- **Paramètres :**
  - `p` : Le polynôme à évaluer.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

- **Retour :**
  - Un vecteur des puissances présentes dans le polynômes
  - **Type :** vecteur d'entiers

> #### `cat_IntList(tab)`
Etant donné que la fonction cat() ne marche pas sur les listes, afin d'obtenir un résultat assez lisible, cat_IntList permet d'afficher une liste d'entier sous la forme "[a1, a2, ..., aN]". Cela reste seulement visuel, puisqu'il s'agit un visuel

- **Paramètres :**
  - `p` : Le polynôme à évaluer.
  - **Type :** polynôme creux : format : list(c(coeff, puissance), ...).

- **Retour :**
  - Un vecteur des puissances présentes dans le polynômes
  - **Type :** chaîne de caractères.