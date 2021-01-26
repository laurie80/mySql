    -- PARTIE 4 Insertion de données

-- Insertion sans préciser les colonnes

-- Insérez les données suivantes dans la table languages de la base webDevelopment :
-- JavaScript, version 5
mysql> INSERT INTO `languages`
    -> VALUES (1, "JavaScript", "5");
Query OK, 1 row affected (0.01 sec)
-- PHP, version 5.2
mysql> INSERT INTO `languages`
    -> VALUES (2, "PHP", "5.2");
Query OK, 1 row affected (0.00 sec)
-- PHP, version 5.4
mysql> INSERT INTO `languages`
    -> VALUES (3, "PHP", "5.4");
Query OK, 1 row affected (0.00 sec)
-- HTML, version 5.1
mysql> INSERT INTO `languages`
    -> VALUES (4, "HTML", "5.1");
Query OK, 1 row affected (0.00 sec)
-- JavaScript, version 6
mysql> INSERT INTO `languages`
    -> VALUES (5, "JavaScript", "6");
Query OK, 1 row affected (0.00 sec)
-- JavaScript, version 7
mysql> INSERT INTO `languages`
    -> VALUES (6, "JavaScript", "7");
Query OK, 1 row affected (0.00 sec)
-- JavaScript, version 8
mysql> INSERT INTO `languages`
    -> VALUES (7, "JavaScript", "8");
Query OK, 1 row affected (0.00 sec)
-- PHP, version 7
mysql> INSERT INTO `languages`
    -> VALUES (8, "PHP", "7");
Query OK, 1 row affected (0.00 sec)

-- Insérez les données suivantes dans la table frameworks de la base webDevelopment :
-- Symfony, version 2.8
mysql> INSERT INTO `frameworks`
    -> VALUES (1, "Symfony", "2.8");
Query OK, 1 row affected (0.00 sec)
-- Symfony, version 3
mysql> INSERT INTO `frameworks`
    -> VALUES (2, "Symfony", "3");
Query OK, 1 row affected (0.00 sec)
-- Jquery, version 1.6
mysql> INSERT INTO `frameworks`
    -> VALUES (3, "Jquery", "1.6");
Query OK, 1 row affected (0.00 sec)
-- Jquery, version 2.10
mysql> INSERT INTO `frameworks`
    -> VALUES (4, "Jquery", "2.10");
Query OK, 1 row affected (0.00 sec)

CORRECTION

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

