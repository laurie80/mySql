-- PARTIE 1 Création et suppression de bases de données

-- Créer une base de données languages.
mysql> CREATE DATABASE `languages`;
Query OK, 1 row affected (0.00 sec)
-- Créer une base de données webDevelopment avec l’encodage UTF-8.
mysql> CREATE DATABASE `webDevelopment` CHARACTER SET 'utf8';
Query OK, 1 row affected (0.00 sec)
-- Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.
mysql> CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET 'utf8';
Query OK, 1 row affected (0.00 sec)
-- Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.
mysql> CREATE DATABASE IF NOT EXISTS `languages` CHARACTER SET 'utf8';
Query OK, 1 row affected, 1 warning (0.00 sec)
-- Supprimer la base de données languages
mysql> DROP DATABASE `languages`;
Query OK, 0 rows affected (0.01 sec)
-- Supprimer la base de données frameworks si elle existe
mysql> DROP DATABASE IF EXISTS `frameworks`;
Query OK, 0 rows affected (0.00 sec)
-- Supprimer la base de données languages si elle existe
mysql> DROP DATABASE IF EXISTS `languages`;
Query OK, 0 rows affected, 1 warning (0.00 sec)