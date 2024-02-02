-- DISTINCT AND DISTINCT ON

DROP TABLE IF EXISTS racing;

CREATE TABLE racing (
   make VARCHAR,
   model VARCHAR,
   year INTEGER,
   price INTEGER
);

INSERT INTO racing (make, model, year, price)
VALUES
('Nissan', 'Stanza', 1990, 2000),
('Dodge', 'Neon', 1995, 800),
('Dodge', 'Neon', 1998, 2500),
('Dodge', 'Neon', 1999, 3000),
('Ford', 'Mustang', 2001, 1000),
('Ford', 'Mustang', 2005, 2000),
('Subaru', 'Impreza', 1997, 1000),
('Mazda', 'Miata', 2001, 5000),
('Mazda', 'Miata', 2001, 3000),
('Mazda', 'Miata', 2001, 2500),
('Mazda', 'Miata', 2002, 5500),
('Opel', 'GT', 1972, 1500),
('Opel', 'GT', 1969, 7500),
('Opel', 'Cadet', 1973, 500)
;

SELECT DISTINCT make FROM racing;

SELECT DISTINCT model FROM racing;

-- Can have duplicates in the make column
SELECT DISTINCT ON (model) make,model,year FROM racing;

-- Must include the DISTINCT column in ORDER BY
SELECT DISTINCT ON (model) make,model,year FROM racing ORDER BY model, year;

SELECT DISTINCT ON (model) make,model,year FROM racing ORDER BY model, year DESC;

SELECT DISTINCT ON (model) make,model,year FROM racing ORDER BY model, year DESC LIMIT 2;
