# Choix pour la base de données :

* table "Auteur" :

Pour la table Auteur, nous avons décidé de partir sur un modèle "id, nom" plutôt que "id, nom, prénom" pour des
raisons de simplicité, en effet certain auteur extrait de l'api n'avait pas d'espace entre leur nom et prénom
ou il leur manquait simplement l'un des deux.

* table "Utilisateur" :

Pour cette table nous avons décidé de partir sur un id comme clé primaire plutôt qu'une association de nom et mot
de passe pour des raisons d'unicité mais aussi de simplicité.

* tables "Langue", "Editeur", ...

Pour la gestion des données telles que la maison d'édition, la langue ou encore l'année de sortie du livre nous avons décidés
de partir sur des tables associées aux livres pour une meilleure gestion des données. En effet les valeurs contiennent beaucoup
de répétitions l’utilisation de table facilite donc la tâche. De plus si l'application venait à évoluer et à recevoir plus de
données, cela nous permettrait un gain de place non négligeable.

* choix de la Langue :

Pour le choix de la langue de la BD nous avons décidé de partir sur de l'anglais, pour le nom de la table "user" nous somme tout de
même rester sur le nom "biblioUser" ("bibliotech" étant le nom de notre application).


* Table Book :  

Dans la table Book, les 3 colonnes id_year, id_editor et id_language peuvent être nuls, en effet certain livre présent dans l'api
n'ont pas d’éditeurs ou autres associées ce qui complique l'insertion dans la base.

*  Table Loan : 

Dans la table Loan, deux emprunts sur le même livre ne peuvent pas se faire en même temps
