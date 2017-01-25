## Généralités

Le projet se compose de deux script R.
* Un script mes_fonctions_utiles.R qui comprend une cinquantaine de fonctions pratique sous R, qui sont listées en bas
* Un script astuces.R qui propose et décortique une dizaine d'astuces et "mini_hacks" avec les fonctions de base de R.

## Installation

La mise en oeuvre de ce script peut nécessiter des packages spécifiques, selon les fonctions:
ggplot2, gridExtra, dplyr, FactoMineR, leaps, lubridate, ellipse, ggdendro, outliers, reshape2, RColorBrewer

Voir la correspondance exacte dans le paragraphe "détails"

## Exécution

Le script peut être sourcé ou exécuté morceau par morceau.
Il est prévu à terme d'intégrer ces fonctions dans un package spécifique

## Contributors

marc.agenis-nevers@veolia.com

## License

Ce code est sous licence GNU.

## Détails

Voici la liste des packages nécessaires selon les fonctions: 


| PACKAGE      | FONCTIONS                                                                                            |
|--------------|------------------------------------------------------------------------------------------------------|
| ggplot2      | q_lm, ggpie, .ggpie, ggACF, TS4X4, ggNA, ggNAadd, colstr, HistoDens, ggPCA, ggCA, lmplots, lml, lmlX |
| gridExtra    | ggACF, TS4X4, ggPCA, lmplots                                                                         |
| dplyr        | shift, TS4X4, CreateCalendarVariables                                                                |
| FactoMineR   | ggPCA, ggCA                                                                                          |
| leaps        | regsubset4X4                                                                                         |
| lubridate    | CreateCalendarVariables                                                                              |
| ellipse      | ggPCA                                                                                                |
| ggdendro     | ggPCA                                                                                                |
| outliers     | where.outliers                                                                                       |
| reshape2     | colstr                                                                                               |
| RColorBrewer | colstr                                                                                               |


Voici le descriptif de chaque fonction


| FONCTION                  | DESCRIPTION                                                                                |
|---------------------------|--------------------------------------------------------------------------------------------|
| .detach                   | detacher package (entre guillemets) sans renvoyer erreur en cas d'absence du package       |
| .ls.objects               | liste de tous les objets de l'environnement                                                |
| r                         | identique a rnorm mais plus rapide a ecrire et avec des arguments par defaut               |
| all.diff                  | voir si tout les elements d'un vecteur sont differents                                     |
| wd                        | ouvrir dans une fenetre le repertoire de travail                                           |
| import                    | importer un csv classique point virgule, decimale (systeme francais)                       |
| wt                        | exporter au format csv un data.frame                                                       |
| wtn                       | exporter au format excel un 'N'ouveau data.frame avec nom aléatoire                        |
| rhead                     | extrait aléatoire des lignes d'un data.frame                                               |
| seqrange                  | creer rune sequence entre les bornes max d'un vecteur                                      |
| shift                     | creer un vecteur decalé dans un sens ou dans l'autre, remplir les trous                    |
| rmat                      | créer une matrice ou data.frame carré de nombres aléatoires                                |
| Show                      | afficher une matrice sous forme d'image, dans le bon sens                                  |
| pc1                       | tranformer en pourcent et arrondir                                                         |
| pc2                       | tranformer en pourcent et arrondir                                                         |
| ecart                     | calculer l'ecart entre deux nombres ou vecteurs, sortie en pourcent ou non                 |
| is.empty                  | tester si un objet est vide                                                                |
| fitex                     | generer rapidement un modele lineaire simple, ou bivarie                                   |
| CV                        | calculer le coefficient de variation                                                       |
| 15 fonctions avec na.rm=T | 15 indicateurs statistiques classiques sans na.rm=TRUE                                     |
| minmax                    | normaliser min/max un data.frame                                                           |
| sumstats                  | produire un résumé statistique d'un data.frame                                             |
| almost.equal              | verifier si deux nombres sont quasiument egaux (a la precision machine pres)               |
| MonthNames                | créer un vecteur de mois de l'année                                                        |
| RemoveZeros               | enlever les colonnes avec trop de zeros dans un data.Frame                                 |
| RemoveNas                 | enlever les colonnes avec trop de valeurs nulles dans un data.Frame                        |
| CreateRunGroups           | cree un vecteur d'appartenance a un groupe, a partir de la position des limites de groupes |
| sign3                     | formatter les nombres pour X chiffres significatifs                                        |
| NullRatio                 | calculer le pourcentage de valeurs nulles dans une colonne                                 |
| q_lm                      | quick plot de points et une droite avec IC                                                 |
| gg_color_hue              | emuler les couleurs ggplot pour N niveaux                                                  |
| ggpie                     | Creer un graphique camembert (a partir d'un tableau de contingence)                        |
| .ggpie                    | Creer un graphique camembert (a partir d'un tableau ŕ 2 colonnes)                          |
| ggACF                     | plotter un ACF et PACF ensemble, avec ggplot2                                              |
| TS4X4                     | 4 plots utiles d'une série temporelle                                                      |
| regsubset4X4              | rendu graphique d'un modčle de selection de variable exhaustive                            |
| ggNA                      | compter et visualiser les valeurs manquantes d'un tableau                                  |
| ggNAadd                   | ajouter des valeurs manquantes ŕ un tableau, visualiser                                    |
| colstr                    | representer graphiquement la structure d'un tableau ou vecteur                             |
| where.outliers            | renvoyer la position du plus fort outlier de chaque colonne                                |
| HistoDens                 | plotter un histogramme de frequence avec courbe de densite ajustee                         |
| ggPCA                     | réaliser et plotter une ACP avec 4 sorties graphiques différentes                          |
| ggCA                      | réaliser et plotter une AC avec ggplot2                                                    |
| lmplots                   | analyses graphiques d'une régression avec ggplot2                                          |
| lml                       | plot d'un modčle linéaire univarié, avec influence et lissage                              |
| lmlX                      | plot de variables deux ŕ deux pour un data.frame                                           |
| PredError                 | Calculer l'erreur entre un vecteur prédiction et réel, selon 20 méthodes différentes       |
| CreateCalendarVariables   | Ajouter ŕ un data.frame plusieurs variables calendaires                                    |