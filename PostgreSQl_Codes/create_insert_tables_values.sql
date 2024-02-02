DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
	name	varchar(50),
	species	varchar(50),
	birthdate	date
);


INSERT INTO public.animals(
	name, species, birthdate)
	VALUES ('max', 'gorilla', '1998-06-12'),
			('sue', 'gorilla', '2012-02-20'),
			('max', 'moose', '1997-11-24'),
 			('allison', 'llama', '2011-01-09'),
			('george', 'gorilla', '2010-07-23'),
			('spot', 'iguana', '1989-09-15'),
			('ratu', 'orangutan', '2002-02-22'),
			('eli', 'llama', '2001-04-13');
