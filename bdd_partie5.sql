-- PARTIE 5 Sélection de données

-- Dans la table languages, afficher toutes les données de la table
mysql> SELECT * FROM `language`;
+----+------------+---------+
| id | language   | version |
+----+------------+---------+
|  1 | JavaScript |       5 |
|  2 | PHP        |       5 |
|  3 | PHP        |       5 |
|  4 | HTML       |       5 |
|  5 | JavaScript |       6 |
|  6 | JavaScript |       7 |
|  7 | JavaScript |       8 |
|  8 | PHP        |       7 |
+----+------------+---------+
8 rows in set (0.01 sec)
-- Dans la table languages, afficher toutes les versions de PHP.
mysql> SELECT *
    -> FROM `language`
    -> WHERE `language`="PHP";
+----+----------+---------+
| id | language | version |
+----+----------+---------+
|  2 | PHP      |       5 |
|  3 | PHP      |       5 |
|  8 | PHP      |       7 |
+----+----------+---------+
3 rows in set (0.02 sec)
-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
mysql> SELECT *
    -> FROM `languages`
    -> WHERE `language`="PHP"
    -> || `language`="JavaScript";
+----+------------+---------+
| id | language   | version |
+----+------------+---------+
|  1 | JavaScript |       5 |
|  2 | PHP        |       5 |
|  3 | PHP        |       5 |
|  5 | JavaScript |       6 |
|  6 | JavaScript |       7 |
|  7 | JavaScript |       8 |
|  8 | PHP        |       7 |
+----+------------+---------+
7 rows in set (0.02 sec)
-- Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
mysql> SELECT *
    -> FROM `languages`
    -> WHERE `id`="3"
    -> || `id`="5"
    -> || `id`="7";
+----+------------+---------+
| id | language   | version |
+----+------------+---------+
|  3 | PHP        |       5 |
|  5 | JavaScript |       6 |
|  7 | JavaScript |       8 |
+----+------------+---------+
3 rows in set (0.02 sec)
-- Dans la table languages, afficher les deux première entrées de JavaScript.
mysql> SELECT *
    -> FROM `languages`
    -> WHERE `language`="JavaScript"
    -> ORDER BY `id`
    -> LIMIT 2;
+----+------------+---------+
| id | language   | version |
+----+------------+---------+
|  1 | JavaScript |       5 |
|  5 | JavaScript |       6 |
+----+------------+---------+
2 rows in set (0.00 sec)
-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.
mysql> SELECT *
    -> FROM `languages`
    -> WHERE `language`!="PHP";
+----+------------+---------+
| id | language   | version |
+----+------------+---------+
|  1 | JavaScript |       5 |
|  4 | HTML       |       5 |
|  5 | JavaScript |       6 |
|  6 | JavaScript |       7 |
|  7 | JavaScript |       8 |
+----+------------+---------+
5 rows in set (0.00 sec)
-- Dans la table languages, afficher toutes les données par ordre alphabétique.
mysql> SELECT *
    -> FROM `languages`
    -> ORDER BY `language`;
+----+------------+---------+
| id | language   | version |
+----+------------+---------+
|  4 | HTML       |       5 |
|  1 | JavaScript |       5 |
|  5 | JavaScript |       6 |
|  6 | JavaScript |       7 |
|  7 | JavaScript |       8 |
|  2 | PHP        |       5 |
|  3 | PHP        |       5 |
|  8 | PHP        |       7 |
+----+------------+---------+
8 rows in set (0.00 sec)

