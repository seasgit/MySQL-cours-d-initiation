
ALTER TABLE musiciens
ADD CONSTRAINT fk_musiciens_pays 
FOREIGN KEY (pays_id) REFERENCES pays(id);

ALTER TABLE musiciens 
ADD CONSTRAINT fk_musiciens_styles 
FOREIGN KEY (style_id) REFERENCES styles(id);

ALTER TABLE musiciens 
ADD CONSTRAINT fk_musiciens_instruments 
FOREIGN KEY (instrument_id) REFERENCES instruments(id);

