
-- PARTIE 6 Sélection de données - Élargir les possibilités de la clause WHERE

-- EXECUTION DU SCRIPT FOURNI
CREATE TABLE `webDevelopment`.`ide` (
`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
`version` VARCHAR(10) NOT NULL,
`date` DATE NOT NULL,
PRIMARY KEY (`id`)
)
ENGINE=INNODB;

INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.3', '2007-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.5', '2009-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.6', '2010-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.7', '2011-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '4.3', '2013-06-13');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('NetBeans', '7', '2011-04-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('NetBeans', '8.2', '2016-10-03');

-- Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).
mysql> USE `webDevelopment`;
Database changed
mysql> SELECT *
    -> FROM `frameworks`
    -> WHERE version LIKE "2%";
+----+-----------+---------+
| id | framework | version |
+----+-----------+---------+
|  1 | Symfony   | 2.8     |
|  4 | Jquery    | 2.10    |
+----+-----------+---------+
2 rows in set (0.00 sec)
-- Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.
mysql> SELECT *
    -> FROM `frameworks`
    -> WHERE `id`="1"
    -> || `id`="3";
+----+-----------+---------+
| id | framework | version |
+----+-----------+---------+
|  1 | Symfony   | 2.8     |
|  3 | Jquery    | 1.6     |
+----+-----------+---------+
2 rows in set (0.02 sec)
-- OU
mysql> SELECT *
    -> FROM `frameworks`
    -> WHERE `id` LIKE "1%"
    -> || `id` LIKE "3%";
+----+-----------+---------+
| id | framework | version |
+----+-----------+---------+
|  1 | Symfony   | 2.8     |
|  3 | Jquery    | 1.6     |
+----+-----------+---------+
2 rows in set (0.00 sec)
-- Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.
mysql> SELECT *
    -> FROM `ide`
    -> WHERE `date` BETWEEN "2010-01-01" AND "2011-12-31";
+----+----------+---------+------------+
| id | name     | version | date       |
+----+----------+---------+------------+
|  3 | Eclipse  | 3.6     | 2010-06-01 |
|  4 | Eclipse  | 3.7     | 2011-06-01 |
|  6 | NetBeans | 7       | 2011-04-01 |
+----+----------+---------+------------+
3 rows in set (0.04 sec)

CORRECTION

/* Partie 6 : Sélection de données - Élargir les possibilités de la clause WHERE 
Avant de commencer les exercices, exécutez le script fourni.*/

/*exo1-Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).*/
SELECT * FROM `frameworks` WHERE `version` LIKE '2.%';

/*exo2-Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.*/
SELECT * FROM `frameworks` WHERE `id`IN (1, 3);

/*exo3-Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.*/
SELECT * FROM `ide` WHERE `date` BETWEEN 2010-01-01 AND 2011-12-31;
