-- in the table add column for an index
ALTER TABLE film ADD pays_id INT(2) NOT NULL AFTER genre_id;

-- create a foreign key between Film and Pays
ALTER TABLE `film` ADD CONSTRAINT `fk_film_pays` FOREIGN KEY (`pays_id`) REFERENCES `pays`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;