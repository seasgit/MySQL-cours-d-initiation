use db_artistes_innodb;

SELECT
	M.id,
	M.prenom,
	M.nom,
	M.detail,
	P.pays,
	S.style,
	I.nom AS instrument
FROM musiciens AS M
INNER JOIN pays AS P ON M.pays_id = P.id
INNER JOIN styles AS S ON M.style_id = S.id
INNER JOIN instruments AS I ON M.instrument_id = I.id 

WHERE I.nom = 'guitare'




