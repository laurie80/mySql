-- PARTIE 3 Modification de tables

-- Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR)
mysql> USE `webDevelopment`;
Database changed
mysql> ALTER TABLE `languages`
    -> ADD "versions" VARCHAR(255);
Query OK, 0 rows affected (0.04 sec)
Enregistrements: 0  Doublons: 0  Avertissements: 0
-- Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT)
mysql> ALTER TABLE `frameworks`
    -> ADD "version" INT;
Query OK, 0 rows affected (0.03 sec)
Enregistrements: 0  Doublons: 0  Avertissements: 0
-- Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.
mysql> ALTER TABLE `languages`
    -> CHANGE "versions" "version" INT;
Query OK, 0 rows affected (0.01 sec)
Enregistrements: 0  Doublons: 0  Avertissements: 0
-- Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.
mysql> ALTER TABLE `frameworks`
    -> CHANGE "name" "framework" VARCHAR(255);
Query OK, 0 rows affected (0.03 sec)
Enregistrements: 0  Doublons: 0  Avertissements: 0
-- Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
mysql> ALTER TABLE `frameworks`
    -> MODIFY "version" VARCHAR(10);
Query OK, 0 rows affected (0.01 sec)
Enregistrements: 0  Doublons: 0  Avertissements: 0

-- TP
-- Dans la base codex, dans la table clients :
-- supprimer la colonne secondPhoneNumber
mysql> ALTER TABLE `clients`
    -> DROP "secondPhoneNumber";
Query OK, 0 rows affected (0.04 sec)
Enregistrements: 0  Doublons: 0  Avertissements: 0
-- renommer la colonne firstPhoneNumber en phoneNumber
mysql> ALTER TABLE `clients`
    -> CHANGE "firstPhoneNumber" "phoneNumber" INT;
Query OK, 0 rows affected (0.01 sec)
Enregistrements: 0  Doublons: 0  Avertissements: 0
-- changer le type de la colonne phoneNumber en VARCHAR
mysql> ALTER TABLE `clients`
    -> MODIFY "phoneNumber" VARCHAR(10);
Query OK, 0 rows affected (0.01 sec)
Enregistrements: 0  Doublons: 0  Avertissements: 0
-- ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
mysql> ALTER TABLE `clients`
    -> ADD "zipCode" VARCHAR(255),
    -> ADD "city" VARCHAR(255);

CORRECTION

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
