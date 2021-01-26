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

