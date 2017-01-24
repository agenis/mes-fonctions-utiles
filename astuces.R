
### Astuces et mini-hacks sous R. Mise a jour 24-01-2017. Création 12-01-2016


### SOMMAIRE
# 1. creer un vecteur indicateur de changement dans un autre
# 2. eviter l'usage des structures if{} dans certains cas
# 3. plotter et printer dans une meme ligne (avec le "chaining")
# 4. regrouper les arguments d'une fonction
# 5. compter les valeurs manquantes d'un tableau facilemnet
# 6. faire une moyenne par groupes, sans s'embeter avec les valeurs manquantes
# 7. marre d'avoir à specifier un plot en lignes plutot qu'en points?
# 8. 
# 9. 
# 10. 


############# 1. ########################################################
# creer un vecteur indicateur de changement dans un autre

( a <- c(rep(1, 4), rep(2, 6), rep(0, 5), rep(1, 4), rep(3, 3)) )

# ou ont lieu les changements de valeur?
where <- c(0, diff(a)) != 0
cbind(a, where)
# explication: la fonction diff() revient a deriver le vecteur
# (voir aussi la fonction rle() qui est assez proche)



############# 2. ########################################################
# eviter l'usage des structures if{} dans certains cas

pourcentage <- TRUE
result      <- 0.42

# comparer:
if (pourcentage=="TRUE"){
  print(result*100)
} else {
  print(result)
}
# avec ca (plus concis, non?)
result*100^pourcentage
# explication: le logique TRUE/FALSE se transforme en 0/1 dans une expression algebrique



############# 3. ########################################################
# plotter et printer dans une meme ligne (avec le "chaining")

library(dplyr)

# au lieu de deux lignes:
summary(mtcars)
plot(mtcars)
# une seule ligne:
mtcars %T>% plot %>% summary
# le caracters special de derivation permet de "sauter" une instruction en l'executant quand meme



############# 4. ########################################################
# regrouper les arguments d'une fonction puis passer le groupe en argument

options <- list("nb.it"=100,
             "replace"=TRUE,
             "myfunc"=sd)
MyBootstrap = function(data, options){
  res <- replicate( options$nb.it, sample(data, replace=options$replace) )
  return( options$myfunc(res) )}

# c'est un peu plus lisible (en plus ca bypasse le nombre maximum d'arguments d'une fonction (32))
MyBootstrap(AirPassengers, options)
# cela permet aussi de debugger la fonction ligne par ligne car les arguments 
# sont deja enregistres independament dans l'environnement de travail



############# 5. ########################################################
# Compter les valeurs manquantes d'un tableau facilemnet

sum( is.na(airquality) )
# explication: TRUE est equivalent à 1 dans un vecteur logique



############# 6. ########################################################
# Faire une moyenne par groupes, sans s'embeter avec les valeurs manquantes

airquality$Month <- factor(airquality$Month)

# methode classique (il y en a plein) qui echoue a cause des NA
with(airquality, tapply(Ozone, Month, mean))
# pour specifier na.rm=T il faut reecrire la fonction... penible! alors que:
lm(Ozone ~ Month - 1, airquality)$coef
# explication: ces moyennes sont egales aux coefs d'un modele lineaire! (attention: sans intercept d'ou le '-1'). remarque: pour les TRES GROS jeux de donnees le lm() est plus long à calculer



############# 7. ########################################################
# marre d'avoir a specifier un plot en lignes plutot qu'en points?

y <- rnorm(100)

# pour plotter une ligne plutot qu'un nuage de points, normalement on fait ca:
plot(y, type='l')
# il y a plus direct:
plot.ts(y)
# explication: le plot de time serie fonctionne aussi pour des vecteurs numeriques





