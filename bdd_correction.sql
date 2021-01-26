  
-- Création et suppression de bases de données
-- Créations bases de données.

-- Exercice 1: Créer une base de données languages.
CREATE DATABASE `languages`;

-- Exercice 2: Créer une base de données webDevelopment avec l’encodage UTF-8.
CREATE DATABASE `webDevelopment` CHARACTER SET `utf8`;

-- Exercice 3: Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET `utf8`;

-- Exercice 4: Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.
CREATE DATABASE IF NOT EXISTS `languages` CHARACTER SET `utf8`;

-- Suppressions bases de données.
-- Exercice 5: Supprimer la base de données languages.
DROP DATABASE `languages`;

-- Exercice 6: Supprimer la base de données frameworks si elle existe.
DROP DATABASE IF EXISTS `frameworks`;

-- Exercice 7: Supprimer la base de données languages si elle existe.
DROP DATABASE IF EXISTS `languages`;


-- Créations de tables.

-- Exercice 1: Dans la base de données webDevelopment, créer la table languages avec les colonnes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- language (type VARCHAR)
-- Création de table dans la base de donnée webDevelopment.
USE `webDevelopment`; -- Sélection de la base de donnée.
CREATE TABLE IF NOT EXISTS`languages` (  -- Création de la table, si elle n'existe pas.
    `id` INT UNSIGNED AUTO_INCREMENT, -- Création d'une colonne id de type integer qui est positif grâce à UNSIGNED et auto incrémenté.
    `language`VARCHAR(40), -- Création d'une colonne languages de caractères variable j'usquà 40.
    PRIMARY KEY (id) -- Clef primaire de l'id.
    ) 
    ENGINE=INNODB; -- Type de moteur utilisé.

-- Exercice 2: Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- tool (type VARCHAR)
CREATE TABLE `tools` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `tool`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- Exercice 3: Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- name (type VARCHAR)
CREATE TABLE `frameworks`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- Exercice 4: Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- library (type VARCHAR)
CREATE TABLE `libraries`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `library`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- Exercice 5: Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- ideName (type VARCHAR)
CREATE TABLE `ide`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `ideName`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- Exercice 6: Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- name (type VARCHAR)
CREATE TABLE IF NOT EXISTS `frameworks`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name`VARCHAR(40),
    PRIMARY KEY (id)
    ) ENGINE=INNODB;

-- Exercice 7: Supprimer la table tools si elle existe.
DROP TABLE IF EXISTS `tools`;

-- Exercice 8: Supprimer la table libraries.
DROP TABLE `libraries`;

-- Exercice 9: Supprimer la table ide.
DROP TABLE `ide`;

-- TP Créer la base codex. Y créer une table clients qui aura comme colonnes :
+------------------+---------+-------------------------------+
|      Colonne 	   |   Type  |         Attributs             |
+------------------+---------+-------------------------------+
| id	           | INT     | Auto-incrémenté, clé primaire |
+------------------+---------+-------------------------------+
| lastname         | VARCHAR |                               |
+------------------+---------+-------------------------------+
| firstname        | VARCHAR |                               |
+------------------+---------+-------------------------------+ 
| birthDate        | DATE    |                               |
+------------------+---------+-------------------------------+
| address          | VARCHAR |                               |
+------------------+---------+-------------------------------+  
| firstPhoneNumber | INT     |                               |
+------------------+---------+-------------------------------+
| secondPhoneNumber| INT     |                               |
+------------------+---------+-------------------------------+ 
| mail 	           | VARCHAR |                               |  
+------------------+---------+-------------------------------+
CREATE DATABASE `codex`;
USE `codex`;
CREATE TABLE IF NOT EXISTS `clients`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `lastname`VARCHAR(40),
    `firstname`VARCHAR(40),
    `birthDate` DATE,
    `address`VARCHAR(100),
    `firstPhoneNumber`INT,
    `secondPhoneNumber`INT,
    `mail`VARCHAR(20),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;
    

-- Modification de tables

-- Exercice 1: Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).
 ALTER TABLE `languages`
    -> ADD COLUMN `versions` VARCHAR(20); -- Le mot clef COLUMN est facultatif.

-- Exercice 2: Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).
ALTER TABLE `frameworks`
    -> ADD COLUMN `version` INT; -- ADD permet d'ajouter une colonne à une table existante.

-- Exercice 3: Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.
ALTER TABLE `languages`
    -> CHANGE `versions` `version` VARCHAR(20); -- CHANGE permet changer le nom d'une colonne.

-- Exercice 4: Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.
ALTER TABLE `frameworks`
    -> CHANGE `name` `framework`VARCHAR(40);

-- Exercice 5: Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
ALTER TABLE `frameworks`
    -> MODIFY `version` VARCHAR(10); -- MODIFY permet de modifier le type d'une colonne.

--TP Dans la base codex, dans la table clients :
    -- supprimer la colonne secondPhoneNumber
    -- renommer la colonne firstPhoneNumber en phoneNumber
    -- changer le type de la colonne phoneNumber en VARCHAR
    -- ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
USE `codex`;
ALTER TABLE `clients`
    -> DROP `secondPhoneNumber`;
ALTER TABLE `clients`
    -> CHANGE `firstPhoneNumber` `phoneNumber` INT;
ALTER TABLE `clients`
    -> MODIFY `phoneNumber` VARCHAR(10);
ALTER TABLE `clients`
    -> ADD `zipCode` VARCHAR(8),
    -> ADD `city` VARCHAR(20);


    -- Insertion de données

-- Exercice 1: Insérez les données suivantes dans la table languages de la base webDevelopment:
    -- JavaScript, version 5
    -- PHP, version 5.2
    -- PHP, version 5.4
    -- HTML, version 5.1
    -- JavaScript, version 6
    -- JavaScript, version 7
    -- JavaScript, version 8
    -- PHP, version 7
INSERT INTO `languages` (`language`, `version`)
    -> ('JavaScript', 'version 5'),
    -> ('PHP', 'version 5.2'),
    -> ('PHP', 'version 5.4'),
    -> ('HTML', 'version 5.1'),
    -> ('JavaScript', 'version 6'),
    -> ('JavaScript', 'version 7'),
    -> ('JavaScript', 'version 8'),
    -> ('PHP', 'version 7');

-- Exercice 2: Insérez les données suivantes dans la table frameworks de la base webDevelopment:
    -- Symfony, version 2.8
    -- Symfony, version 3
    -- Jquery, version 1.6
    -- Jquery, version 2.10
INSERT INTO `frameworks` (`framework`, `version`)
    -> ('Symfony', 'version2.8'),
    -> ('Symfony', 'version 3'),
    -> ('Jquery', 'version1.6'),
    -> ('Jquery', 'vers2.10');


    -- Sélection de données.

-- Exercice 1: Dans la table languages, afficher toutes les données de la table.
SELECT *
    -> FROM `languages`;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
8 rows in set (0.00 sec)

-- Exercice 2: Dans la table languages, afficher toutes les versions de PHP.
SELECT *
    -> FROM `languages`
    -> WHERE `language`= 'PHP';
+----+-----------+-------------+
| id | language  | version     |
+----+-----------+-------------+
|  2 | PHP       | version 5.2 |
|  3 | PHP       | version 5.4 |
|  8 | PHP       | version 7   |
+----+-----------+-------------+
3 rows in set (0.00 sec)

-- Exercice 3: Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
SELECT *
    -> FROM `languages`
    -> WHERE `language` <> 'HTML';
    WHERE `language` = 'PHP' OR  `language` = 'JavaScript';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
7 rows in set (0.00 sec)

-- Exercice 4: Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
SELECT *
    -> FROM `languages`
    -> WHERE `id`IN (3, 5, 7);
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+
3 rows in set (0.00 sec)

-- Exercice 5: Dans la table languages, afficher les deux première entrées de JavaScript.
SELECT *
    -> FROM `languages`
    WHERE `language` = 'JavaScript'
    LIMIT 2;
+----+------------+-----------+
| id | language   | version   |
+----+------------+-----------+
|  1 | JavaScript | version 5 |
|  7 | JavaScript | version 8 |
+----+------------+-----------+
2 rows in set (0.00 sec)

-- Exercice 6: Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.
SELECT *
    -> FROM `languages`
    -> WHERE `language` <> 'PHP';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+
5 rows in set (0.00 sec)

-- Exercice 7: Dans la table languages, afficher toutes les données par ordre alphabétique.
SELECT *
    -> FROM `languages`
    -> ORDER BY `language`;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  4 | HTML       | version 5.1 |
|  1 | JavaScript | version 5   |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  8 | PHP        | version 7   |
+----+------------+-------------+
8 rows in set (0.00 sec)

/* Partie 6 : Sélection de données - Élargir les possibilités de la clause WHERE 
Avant de commencer les exercices, exécutez le script fourni.*/

/*exo1-Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).*/
SELECT * FROM `frameworks` WHERE `version` LIKE '2.%';

/*exo2-Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.*/
SELECT * FROM `frameworks` WHERE `id`IN (1, 3);

/*exo3-Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.*/
SELECT * FROM `ide` WHERE `date` BETWEEN 2010-01-01 AND 2011-12-31;


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
