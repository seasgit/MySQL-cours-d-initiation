--
-- Création la la base de données db_musiciens
--
CREATE DATABASE db_artistes CHARACTER SET 'utf8';
USE db_artistes;

--
-- Structure de la table pays
--
CREATE TABLE pays (
  id int(11) NOT NULL,
  pays varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE pays
  ADD PRIMARY KEY (id);

--
-- Structure instruments 
--
CREATE TABLE IF NOT EXISTS instruments (
  id int(2) NOT NULL,
  nom varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE instruments
  ADD PRIMARY KEY (id);

--
-- Structure de la table styles
--
CREATE TABLE styles (
  id int(3) NOT NULL,
  style varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE styles
  ADD PRIMARY KEY (id);

--
-- Structure de la table
--

CREATE TABLE musiciens (
  id int(2) NOT NULL AUTO_INCREMENT,
  nom varchar(100) NOT NULL,
  prenom varchar(100) NOT NULL,
  naissance date NOT NULL,
  detail text NOT NULL,
  photo varchar(100) NOT NULL,
  pays_id int(2) NOT NULL,
  instrument_id int(2) NOT NULL,
  style_id int(2) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET='utf8' ;
