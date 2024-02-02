DROP TABLE IF EXISTS species;

CREATE TABLE species (
	species VARCHAR(15),
	food	VARCHAR(15)
);

INSERT INTO public.species(
	species, food)
	VALUES ('llama', 'plants'),
	('brown bear', 'fish'),
	('brown bear', 'meat'),
	('brown bear', 'plants'),
	('orangutan', 'plants'),
	('orangutan', 'insects');
