-- GROUP BY

SELECT * FROM pg_timezone_names LIMIT 20;

SELECT COUNT(*) FROM pg_timezone_names;

SELECT DISTINCT is_dst FROM pg_timezone_names;

SELECT COUNT(is_dst), is_dst FROM pg_timezone_names GROUP BY is_dst;

SELECT COUNT(abbrev), abbrev FROM pg_timezone_names GROUP BY abbrev;


-- WHERE is before GROUP BY, HAVING is after GROUP BY

SELECT COUNT(abbrev) AS ct, abbrev FROM  pg_timezone_names WHERE is_dst= 't' GROUP BY abbrev HAVING COUNT(abbrev) > 10;

SELECT COUNT(abbrev) AS ct, abbrev FROM  pg_timezone_names GROUP BY abbrev HAVING COUNT(abbrev) > 10;

SELECT COUNT(abbrev) AS ct, abbrev FROM  pg_timezone_names GROUP BY abbrev HAVING COUNT(abbrev) > 10 ORDER BY COUNT(abbrev) DESC;
