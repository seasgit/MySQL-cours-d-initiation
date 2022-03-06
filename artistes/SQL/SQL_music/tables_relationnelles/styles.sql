
--
-- Structure de la table styles
--

CREATE TABLE styles (
  id int(3) NOT NULL,
  style varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour la table
--
ALTER TABLE styles
  ADD PRIMARY KEY (id);

