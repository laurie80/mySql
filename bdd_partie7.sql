-- Partie 7 : Suppression et modification de données

-- Dans la table languages, supprimer toutes les lignes parlant de HTML.
mysql> DELETE FROM `languages`
    -> WHERE `language` = "HTML";
Query OK, 1 row affected (0.01 sec)
-- Vérification de la bonne suppression des lignes HTML
mysql> SELECT *
    -> FROM `languages`
    -> ORDER BY `language`;
+----+------------+---------+
| id | language   | version |
+----+------------+---------+
|  1 | JavaScript |       5 |
|  5 | JavaScript |       6 |
|  6 | JavaScript |       7 |
|  7 | JavaScript |       8 |
|  2 | PHP        |       5 |
|  3 | PHP        |       5 |
|  8 | PHP        |       7 |
+----+------------+---------+
7 rows in set (0.01 sec)
-- Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2
mysql> UPDATE `frameworks`
    -> SET `framework`="Symfony2"
    -> WHERE `id`="1"
    -> || `id`="2";
Query OK, 2 rows affected (0.03 sec)
Enregistrements correspondants: 2  Modifi├®s: 2  Warnings: 0
-- Vérification de la bonne modification des lignes Symfony par Symfony2
mysql> SELECT *
    -> FROM `frameworks`
    -> ORDER BY `framework`;
+----+-----------+---------+
| id | framework | version |
+----+-----------+---------+
|  3 | Jquery    | 1.6     |
|  4 | Jquery    | 2.10    |
|  1 | Symfony2  | 2.8     |
|  2 | Symfony2  | 3       |
+----+-----------+---------+
4 rows in set (0.00 sec)
-- Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1.
mysql> UPDATE `languages`
    -> SET `version`="5.1"
    -> WHERE `id`="1";
Query OK, 0 rows affected (0.00 sec)
Enregistrements correspondants: 1  Modifi├®s: 0  Warnings: 0
-- Vérification de la bonne modification des JavaScript 5 par 5.1
mysql> SELECT *
    -> FROM `languages`
    -> ORDER BY `language`;
+----+------------+---------+
| id | language   | version |
+----+------------+---------+
|  1 | JavaScript | 5.1     |
|  5 | JavaScript | 6       |
|  6 | JavaScript | 7       |
|  7 | JavaScript | 8       |
|  2 | PHP        | 5.2     |
|  3 | PHP        | 5.4     |
|  8 | PHP        | 7       |
+----+------------+---------+
7 rows in set (0.00 sec)

CORRECTION

-- Partie 7 Les jointures

-- Exercice 1: Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT `languages`.`name` AS `languName`, `frameworks`.`name` AS `frameName`
    -> FROM `frameworks`
    -> RIGHT JOIN `languages`
    -> ON `languages`.`id` = `frameworks`.`languagesId`;
+------------+---------------+
| languName  | frameName     |
+------------+---------------+
| C++        | Qt            |
| Java       | SDK Android   |
| CSS        | Bootstrap     |
| CSS        | Foundation    |
| CSS        | KNACSS        |
| CSS        | Avalanche     |
| CSS        | Miligram      |
| CSS        | Skeleton      |
| CSS        | Hoisin        |
| CSS        | Inuit         |
| CSS        | Mimic         |
| CSS        | Ministrap     |
| CSS        | Lotus         |
| JavaScript | Jquery        |
| JavaScript | Angular       |
| JavaScript | ReactJS       |
| JavaScript | Vue.js        |
| JavaScript | Ember.js      |
| JavaScript | Meteor.js     |
| PHP        | Laravel       |
| PHP        | Symfony       |
| PHP        | CodeIgniter   |
| PHP        | Yii           |
| PHP        | Phalcon       |
| PHP        | Lumen         |
| PHP        | Silex         |
| PHP        | Slim          |
| C#         | .NET          |
| VB         | .NET          |
| Python     | Django        |
| Ruby       | Ruby On Rails |
| Assembleur | NULL          |
| C          | NULL          |
| HTML       | NULL          |
| Swift      | NULL          |
+------------+---------------+
35 rows in set (0.00 sec)

-- Exercice 2: Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
 SELECT *
    -> FROM `frameworks`
    -> INNER JOIN `languages`
    -> WHERE `frameworks`.`languagesId` = `languages`.`id`;
+----+---------------+-------------+----+------------+
| id | name          | languagesId | id | name       |
+----+---------------+-------------+----+------------+
|  1 | Qt            |           3 |  3 | C++        |
|  2 | SDK Android   |           4 |  4 | Java       |
|  3 | Bootstrap     |           6 |  6 | CSS        |
|  4 | Foundation    |           6 |  6 | CSS        |
|  5 | KNACSS        |           6 |  6 | CSS        |
|  6 | Avalanche     |           6 |  6 | CSS        |
|  7 | Miligram      |           6 |  6 | CSS        |
|  8 | Skeleton      |           6 |  6 | CSS        |
|  9 | Hoisin        |           6 |  6 | CSS        |
| 10 | Inuit         |           6 |  6 | CSS        |
| 11 | Mimic         |           6 |  6 | CSS        |
| 12 | Ministrap     |           6 |  6 | CSS        |
| 13 | Lotus         |           6 |  6 | CSS        |
| 14 | Jquery        |           7 |  7 | JavaScript |
| 15 | Angular       |           7 |  7 | JavaScript |
| 16 | ReactJS       |           7 |  7 | JavaScript |
| 17 | Vue.js        |           7 |  7 | JavaScript |
| 18 | Ember.js      |           7 |  7 | JavaScript |
| 19 | Meteor.js     |           7 |  7 | JavaScript |
| 20 | Laravel       |           8 |  8 | PHP        |
| 21 | Symfony       |           8 |  8 | PHP        |
| 22 | CodeIgniter   |           8 |  8 | PHP        |
| 23 | Yii           |           8 |  8 | PHP        |
| 24 | Phalcon       |           8 |  8 | PHP        |
| 25 | Lumen         |           8 |  8 | PHP        |
| 26 | Silex         |           8 |  8 | PHP        |
| 27 | Slim          |           8 |  8 | PHP        |
| 28 | .NET          |           9 |  9 | C#         |
| 29 | .NET          |          10 | 10 | VB         |
| 30 | Django        |          11 | 11 | Python     |
| 31 | Ruby On Rails |          12 | 12 | Ruby       |
+----+---------------+-------------+----+------------+
31 rows in set (0.00 sec)
