DROP TABLE characters;
DROP TABLE lightsabres;

CREATE TABLE characters(
  id SERIAL8 PRIMARY KEY,
-- ID IS ALWAYS A PRIMARY KEY. THE KEY IN THE RELATIONAL TABLE IS THE FOREIGN KEY. EG WILL LINK TO OWNER ID IN ANOTHER TABLE
  name VARCHAR(255) NOT NULL,
  darkside BOOLEAN NOT NULL,
  age INT NOT NULL
  -- USE NOT NULL TO MAKE SURE THERE ARE NO EMPTY CELLS OR ROWS OF DATA
);

CREATE TABLE lightsabres(
  id SERIAL8 PRIMARY KEY,
  colour VARCHAR(255) NOT NULL,
  hilt_metal VARCHAR(255) NOT NULL,
  owner_id INT8 REFERENCES characters(id)
  -- owner id references characters id and is the FOREIGN key
);


INSERT INTO characters (name, darkside, age)
  VALUES('Obi-Wan Kenobi', false, 150);
INSERT INTO characters (name, darkside, age)
  VALUES('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age)
  VALUES('Darth Maul', true, 32);
INSERT INTO characters (name, darkside, age)
  VALUES('Yoda', false, 900);
--  single quotes for VARCHCHARS

UPDATE characters
  SET darkside = true,
      name = 'Darth Vader'
  WHERE name = 'Anakin Skywalker';

UPDATE characters
  SET age = 151,
      name = 'Old-Ben Kenobi'
  WHERE name = 'Obi-Wan Kenobi';

  -- DELETE FROM characters; deletes all data from table
--
-- DELETE FROM characters
--   WHERE name = 'Darth Maul';

-- SELECT AVG(age) FROM characters;
-- SELECT COUNT (*) FROM characters
--   WHERE darkside = true;
--
--
-- SELECT MIN(age) FROM characters;
-- SELECT MAX(age) FROM characters;
-- SELECT SUM(age) FROM characters;
--
-- SELECT * FROM characters
--   ORDER BY age DESC
--   LIMIT 1;

  INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
  INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
  INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
  INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
  INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

  INSERT INTO lightsabres (colour, hilt_metal, owner_id) VALUES ('green', 'steel', 1);
  INSERT INTO lightsabres (colour, hilt_metal, owner_id) VALUES ('Blue', 'iron', 5);
  INSERT INTO lightsabres (colour, hilt_metal, owner_id) VALUES ('red', 'bronze', 3);
  INSERT INTO lightsabres (colour, hilt_metal, owner_id) VALUES ('pink', 'titanium',3) ;


  -- UPDATE characters
  --   SET age = 26
  --   WHERE id = 5;

  SELECT * FROM characters ORDER BY id;
  SELECT * FROM lightsabres;












-- selecting all data from TABLE
SELECT * FROM characters;
SELECT * FROM lightsabres;
