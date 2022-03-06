-- Sélection ordonnée par rapport à un champ donné
SELECT * FROM musiciens ORDER BY nom ASC  (ou DESC)

-- Sélection selon un critère 	
SELECT prenom, nom FROM musiciens WHERE pays='Etats Unis'
SELECT * FROM musiciens WHERE style = 'jazz' AND pays='Etats Unis'

-- Sélection des instruments sans redondance
SELECT DISTINCT instrument FROM musiciens

-- Sélection où l'année de naissance = 1945
SELECT * FROM musiciens WHERE YEAR(naissance)=1945

-- Sélection avec l'année de naissance est entre 1943 et 1945
SELECT * FROM musiciens 
WHERE YEAR( naissance ) BETWEEN 1943 AND 1945 
ORDER BY naissance

-- Sélection où le champ instrument contient « bass ».  
-- A noter la conversion en  minuscule du critère instrument. 
SELECT * FROM musiciens WHERE LCASE(instrument) LIKE "%bass%"

-- Sélection par « naissance » et  conversion en jour, mois, année.
SELECT DATE_FORMAT( naissance,  '%d/%m/%Y' ) AS DATE FROM Musiciens

-- Sélection par « naissance » avec alias des jour, mois, année.
SELECT 
DAY(naissance) AS jour, MONTH(naissance) AS mois, YEAR(naissance) AS annee 
FROM tb_jazz

-- Sélection du nombre d’enregistrement total ou selon critère.
SELECT COUNT(*) FROM Musiciens

-- Sélection du nombre de musiciens groupés par pays
SELECT pays, count(pays) AS nb FROM Musiciens GROUP BY pays

-- Sélectionne les pays représentés une fois

SELECT pays FROM
(SELECT pays,COUNT(pays) as nb FROM Musiciens GROUP BY pays) AS pays_min
WHERE nb= 1

-- Sélectionne les artistes des pays représentés une fois

SELECT * FROM Musiciens WHERE pays
IN (SELECT pays FROM
(SELECT pays, COUNT(pays) as nb FROM Musiciens GROUP BY pays) AS pays_min
WHERE nb= 1)

-- Insertion en fin de table
INSERT INTO musiciens (id,nom,prenom,instrument,style,naissance,pays)
VALUES (null,'Gaudry','Michel','Contrebasse','classique','1928-09-23','France')

-- Update d'un enregistrement.
UPDATE musicien SET style='jazz' WHERE nom='Gaudry'
