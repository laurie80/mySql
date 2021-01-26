-- PARTIE 2 Création de tables

-- selection de la base de donnes webDevelopment
mysql> USE `webDevelopment`;
Database changed
-- on créé la table languages dans la base de donné webDevelopment
-- on définit le nombre de colonne, cette table en comprend deux'id' et 'language'
-- 'id' est la première colonne, c'est la clé primaire, de type 'INT'(integer) et s'auto incrémente à chaque nouvel enregistrement dans la bdd
-- 'language' est la seconde colonne, 'varchar(255)' sert à indiquer que c'est un champ alphanumérique limité ici à 255 charactères (valeur par défaut)
mysql> CREATE TABLE `languages`
    -> (
    -> "id" INT PRIMARY KEY AUTO_INCREMENT,
    -> "language" VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.05 sec)
-- on créé la table tools dans la base de donné webDevelopment
-- on définit le nombre de colonne, cette table en comprend deux'id' et 'tool'
-- 'id' est la première colonne, c'est la clé primaire, de type 'INT'(integer) et s'auto incrémente à chaque nouvel enregistrement dans la bdd
-- 'tool' est la seconde colonne, 'varchar(255)' sert à indiquer que c'est un champ alphanumérique limité ici à 255 charactères
mysql> CREATE TABLE 'tools'
    -> (
    -> "id" INT PRIMARY KEY AUTO_INCREMENT,
    -> "tool" VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.02 sec)
-- on créé la table frameworks dans la base de donné webDevelopment
-- on définit le nombre de colonne, cette table en comprend deux'id' et 'tool'
-- 'id' est la première colonne, c'est la clé primaire, de type 'INT'(integer) et s'auto incrémente à chaque nouvel enregistrement dans la bdd
-- 'name' est la seconde colonne, 'varchar(255)' sert à indiquer que c'est un champ alphanumérique limité ici à 255 charactères
mysql> CREATE TABLE `frameworks`
    -> (
    -> "id" INT PRIMARY KEY AUTO_INCREMENT,
    -> "name" VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.02 sec)
-- on vérifie si a table `frameworks` n'existe pas, si c'est le cas alors elle ne sera pas créé (Query OK, 0 rows affected, 1 warning (0.02 sec)) 
-- sinon elle le sera (Query OK, 0 rows affected)
mysql> CREATE TABLE IF NOT EXISTS `frameworks`
    -> (
    -> "id" INT PRIMARY KEY AUTO_INCREMENT,
    -> "name" VARCHAR(255)
    -> );
    -- '1 warning' signifie que la table existe déjà et ne peut être crée
Query OK, 0 rows affected, 1 warning (0.02 sec)
-- Supprimer la table tools si elle existe.
mysql> DROP TABLE IF EXISTS `tools`;
Query OK, 0 rows affected (0.02 sec)
-- Supprimer la table libraries.
mysql> DROP TABLE `libraries`;
Query OK, 0 rows affected (0.00 sec)
-- Supprimer la table ide.
mysql> DROP TABLE `ide`;
Query OK, 0 rows affected (0.00 sec)

-- TP 
-- création de la bdd `codex
mysql> CREATE DATABASE `codex`;
Query OK, 1 row affected (0.00 sec)
-- on bascule sur la bdd `codex
mysql> USE `codex`;
Database changed
-- on crée la bdd `clients` avec ses colonnes
mysql> CREATE TABLE `clients`
    -> (
    -> "id" INT PRIMARY KEY AUTO_INCREMENT,
    -> "lastname" VARCHAR(255),
    -> "firstname" VARCHAR(255),
    -> "birthDate" DATE,
    -> "address" VARCHAR(255),
    -> "firstPhoneNumber" INT,
    -> "secondPhoneNumber" INT,
    -> "mail" VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.01 sec)

CORRECTION

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
    
