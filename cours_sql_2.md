# A. Problèmes avec l'utilisation d'une table unique.
- Redondances des données
- Efficacité des requêtes
- Maintenance et la mise à jour.
#
# B. Les Tables relationnelles
## Principe
- Il s'avère plus efficace de ranger les données dans plusieurs tables et les relier entre elles.
- Dans l'exemple ci-dessous le schéma illustre le principe.
    - Pour chaque enregistrement de la table `Film`, on a un champ réservé à un index. Appelon le `genre_id `.
    - Chaque index doit correspondre  à la clé primaire d'un enregistrement de la table `Genre`.
    - __NB__ : (_Pour ce type de relation, on verra qu'il faut faire de cet index une clé `clé étrangère`_).

![](./captures/many2one.png)

## Termes de relations :
- Un film ou plusieurs films appartiennent à un genre. On appelle cette relation `Many to One`
- Un genre peut se trouver dans un ou plusieurs films. On appelle cette relation `One to Many`

#
# C. Tables relationnelles de la base db_films 
- Définissons nos tables.
__nb:__ Majuscule, pas d'accents ni d'espaces.  
    - La table `Genre` avec les champs : `(id, nom)`
    - La table `Pays` avec les champs   `(id, nom)`
    - la table `Realisateur` avec les champs  `(id, nom)`
    - la table `Film` avec les champs `(id, titre, sorti, id_realisateur, id_pays, id_genre)`
    
## Création des tables
- On reprend notre base de données en commencant par les tables sans clé étrangère.
- Il n'est pas obligatoire de les alimenter à ce stade, mais on peut aussi le faire.
## La table Genre
Ici, la structure de la table Genre, pour l'exemple.

![](./captures/table_genre.PNG)

## La table Film

En dernier, on crée la table film avec les champs qui vont pointer sur les clé primaires des autres tables _(clés étrangères)._

![](./captures/table_film_index.PNG)

## Test d'insertion dans Film
Quand on fait un test d'insertion avec l'interface PHPMyAdmin, on voit rien de particulier qui nous montre quelque relation avec d'autres tables.

__Normal !__ Nous n'avons pas encore relié les champs `genre_id`, `realisateur_id`, `pays_id` avec les tables respectives.

## Vues relationnelles
Depuis l'onglet structure, nous voyons un bouton `relation view`, il ouvre une page formulaire laquelle nous permet  
de relier nos 2 tables.  

![](./captures/fk_film_pays.PNG)

ON constate maintenant sur la page de la structure  que notre champ `pays_id` est devenu un index.  
Regardez aussi la ligne plus bas __indexes__ !

![](./captures/structure_table_film_foreign_key.png)  


## Insertion dans Pays
On insère deux pays pour vérifier la relation  

![](./captures/insert_table_pays.PNG)

## page d'insertion de Film maintenant.
Ouvrez le sélecteur du champ `pays_id `et constatez   

![](./captures/field_pays_id.PNG)


# inner join vs left join
## Deux tables 
- membres (id, prenom,code_id)
- affectation (id, code)
L'objectif est de récupérer les membres dont le code n'est pas nul.
## left join
```sql
 -- toutes les lignes de la table membres sont retournées, même s’il n’y a pas de correspondance dans la table affectation
SELECT 
    membres.prenom, affectation.code from membres 
    left join affectation on membres.code_id = affectation.id and affectation.code > 0
```
## inner join
```sql
 -- toutes les lignes de la table membres sont retournées, même s’il n’y a pas de correspondante dans la table affectation
SELECT 
    membres.prenom, affectation.code from membres 
    inner join affectation on membres.code_id = affectation.id and affectation.code > 0
```