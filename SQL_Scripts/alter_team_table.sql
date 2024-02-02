ALTER TABLE yourschema.teams ADD CONSTRAINT check_year CHECK (yearid >=1871 and yearid <=2155) enforced; 
ALTER TABLE yourschema.teams ADD CONSTRAINT check_teamrank CHECK (teamrank >=0 and teamrank <=12) enforced; 
