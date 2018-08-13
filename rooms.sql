

DROP TABLE songs;
DROP TABLE guests;
DROP TABLE rooms;



CREATE TABLE rooms(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  capacity INT NOT NULL
);

CREATE TABLE songs(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  room_id INT8 REFERENCES rooms(id)
);

CREATE TABLE guests(
    id SERIAL8 PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    wallet INT NOT NULL,
    room_id INT8 REFERENCES rooms(id)
);


INSERT INTO rooms(name, capacity )
  VALUES('School of Rock', 30);

INSERT INTO rooms(name, capacity )
  VALUES('Grand ole Opry', 20);

INSERT INTO rooms(name, capacity )
  VALUES('Hateful 80s', 30);

INSERT INTO songs(name)
    VALUES('I will survive');

INSERT INTO songs(name)
    VALUES('Rock n Roll is here to stay');

SELECT * FROM rooms;
SELECT * FROM songs;
