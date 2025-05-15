# Documentation des fonctions de tests

**Menu principal : [revenir à l'accueil](/readme.md)**

## 📋 **Contenu de la phase de test**

### 🚀 *Fonctions de tests*

------------------------------------------------------------------------
#### *Dossier Tests -> interface.R*

> #### `startingUp()`

interface de tests intéractif permettant de tester une fonction

-   **Options :**
    -   `numéro du fichier de test`
    -   **Type :** integer
    -   `nombre de polynôme de test à générer`
    -   **Type :** integer
    -   `afficher ou non le détail des logs`
    -   **Type :** character : format : "Y", "N", "y", "n"


#### *Dossier Checks -> check.R*

> #### `Verification()`

Fonction intermédiaire qui interprète une séquence de tests en affichage selon certains critères

-   **Paramètres :**
    -   `seqTests`
    -   **Type :** list
    -   `fct`
    -   **Type :** character
    -   `typeTest`
    -   **Type :** character of integer
    -   `showLogs`
    -   **Type :** boolean
-   **Retour :**
    -   Logs de la fonction testée
    -   **Type :** affichage


#### *Dossier functionsTests -> test_[nom de la fonction].R*

> #### `test()`

Evaluation des tests en fonction d'un nombre de n polynôme(s) générés

-   **Paramètres :**
    -   `n`
    -   **Type :** int
    -   `showLogs`
    -   **Type :** boolean

-   **Retour :**
    -   Logs de la fonction testée
    -   **Type :** affichage, via *Verification()*


#### *Dossier generators -> generators.R*

> #### `generationPoly()`

Génération de n polynôme à l'aide de la fonction rand_poly() du projet

-   **Paramètres :**
    -   `n`
    -   **Type :** int

-   **Retour :**
    -   Un polynôme creux
    -   **Type :** format : list(c(coeff, puissance), ...)


> #### `generationVal()`

Génération de n valeurs

-   **Paramètres :**
    -   `n`
    -   **Type :** int

-   **Retour :**
    -   Une liste d'entiers
    -   **Type :** list


#### *Dossier basic -> basic_tests.R*

> #### `exportBasicPoly()`

Contient une liste de polynôme fait à la main

-   **Paramètres :**

-   **Retour :**
    -   liste de polynômes
    -   **Type :** format : list(c(coeff, puissance), ...)


> #### `exportBasicVal()`

Contient une liste de valeurs fait à la main

-   **Paramètres :**


-   **Retour :**
    -   Une liste d'entiers
    -   **Type :** list

#### *Dossier type -> test[1, 2, 11].R*

> #### `test[1, 2, 11]()`

Calcul l'ensemble des valeurs pour une fonction donnée, et une séquence de tests

-   **Paramètres :**
    
    *-> Base :*

    - `fctTest`
    - **Type :** function
    - `polyList`
    - **Type :** list of polynom

    *-> Possible :*

    - `valList`
    - **Type :** list of integer

-   **Retour :**
    -   liste des résultats de la fonction
    -   **Type :** list()