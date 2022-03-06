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

