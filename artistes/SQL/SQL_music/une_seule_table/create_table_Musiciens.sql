
CREATE TABLE Musiciens (
  id int(2) NOT NULL AUTO_INCREMENT,
  nom varchar(100) NOT NULL,
  prenom varchar(100) NOT NULL,
  instrument varchar(100) NOT NULL,
  style varchar(100) NOT NULL,
  naissance date NOT NULL,
  pays varchar(100) NOT NULL,
  details text NOT NULL,
  photo varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;

