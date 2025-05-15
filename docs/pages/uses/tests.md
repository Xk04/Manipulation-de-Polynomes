# Tests : *Utiliser les fonctions de tests*

**Menu principal : [revenir à l'accueil](/readme.md)**

## Démarrage des tests 
> Pour tester les fonctions, il faut utiliser l’interface de tests. 

Pour cela il faut :
-> S'assurer que la bibliothèque "polynom" est bien installée (elle est utilisée pour comparer nos fonctions à celle de "polynom" lors des tests)
```
install.packages("polynom")
```
-> Puis exécuter le fichier interface.R (situé dans le dossier Tests). Il permettra de configurer dans le terminal 3 options : 
- La fonction à tester (c'est à dire choisir un fichier de test)
- Le nombre de polynôme aléatoire à générer
- Et enfin, si oui ou non nous souhaitons obtenir le détail des différents tests

## Quels sont les tests ?
> Les tests proposés sont :
- des paramètres générés aléatoirement -> via _**generator.R**_
- des tests qui nous semblent critiques/importants (rajoutés aux tests générés) -> via _**basic_tests.R**_

## Fonctions concernées par les tests
- is_poly0()
- degre()
- mult_ext()
- add()
- sub()
- integ()
- deriv()
- mult()
- polyval() 
- polyhorn()

## Fonctions non testées

> Catégorie 1 : 

Certaines fonctions ne sont pas testées pour les raisons suivantes :

- utilisation de l'aléatoire (ex : rand_poly())
- type de retour : affichage (ex: poly2str(), cat_IntList(), dessiner())

> Catégorie 2 :

Quelques fonctions sont testées indirectement :
Soient A une fonction auxiliaire de B. Les tests de B sont tous satifaisants, or A n'a pas était testée. Dans ce cas on suppose que A présente aussi des tests satifaisants.

_**Exemple :**_
sort_monoms() et merge_monoms() sont des fonctions auxiliaires de add() et sub()
-> add() et sub() présentent des tests satifaisants. Nous pouvons alors supposer que sort_monoms() et merge_monoms() produisent des résultats satifaisants.

Liste des fonctions concernées par ce cas :

- sort_monoms()
- merge_monoms()
- make_poly()
- formePleine()
- mult_monoms()
- mult_poly_monoms()

Cela ne veut pas dire que la fonction est vraie pour tous les cas, mais si elle produit des résultats satisfaisants sur un grand nombre de cas, alors elle suffit à notre projet. (plus de 10 000 tests valides)

## Comment fonctionne la phase de test ?

Pour savoir comment se déroule la phase de test, suivez ce lien : [Dossier Tests](../structure/tests_schema.md)

## Verification de l'affichage 

Si vous avez pris connaissance du point précédent, nous allons nous pencher sur le cas de la fonction verification() contenue dans le fichier _**check.R**_.

La fonction verification() est programmée de façon a obtenir un affichage prouvant que le calcul est : TRUE, FALSE, ou une erreur quelconque.

```R
"|---------------------------------|"
    "-> test n° [numero] :"
    "Etat : [TRUE, FALSE, ERROR]"
    "-> Détails des polynômes :"
    "[Les valeurs]"
    "-> Resultats du test :"
    "calcul de [fct à tester] = [résultat] "
    "verification = [résultat de polynom /ou fct native]"
"|---------------------------------|"
```

Il faut savoir que verification() se base sur une séquence de tests et interprète le résultat de manière à ce qu'il soit plus lisible pour le testeur. 

Mais comment savoir si verification() présente les bons résultats de la séquence de test ?

Pour cela il faut se rendre dans l'interface de tests _**interface.R**_ puis sélectionner le fichier _**test__[*SPECIAL*]__verification.R**_

Il s'agit d'un fichier qui démontre que la fonction verification() produit bien l'affichage correspondant à la séquence de test

## Conclusion 

> Les fonctions concernées par les tests passent par une phase de tests automatiques via _**interface.R**_

> Précision : *Celles qui ne sont pas concernées par les tests automatiques ont tout de même été testées à la main.*