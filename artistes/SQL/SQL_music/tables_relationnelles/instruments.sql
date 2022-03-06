--
-- Structure de la table 
--


CREATE TABLE IF NOT EXISTS instruments (
  id int(2) NOT NULL,
  nom varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE instruments
  ADD PRIMARY KEY (id);
