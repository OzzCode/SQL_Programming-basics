-- Generate Data

SELECT random(), random(), trunc(random()*100);
SELECT repeat('Neon ', 5);
SELECT generate_series(1,5);
SELECT 'Neon' || generate_series(1,5);

-- [ 'Neon' + str(x) for x in range(1,6) ]

CREATE TABLE textfun (
  content TEXT
);

INSERT INTO textfun (content) SELECT 'Neon' || generate_series(1,5);

SELECT * FROM textfun;

DELETE FROM textfun;
