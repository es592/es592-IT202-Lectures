CREATE TABLE golfers
  (golferid int primary key,
  name varchar(100),
  address varchar(200),
  phone varchar(20));

 INSERT INTO golfers VALUES
  (100, 'Rich', '123 Main St.', '555-1234');

  INSERT INTO golfers VALUES
  (101, 'Barbara', '123 Main St.', '555-5678');

INSERT INTO golfers VALUES
  (102, 'Jack', '100 Oak St.', '555-9876'); 

INSERT INTO golfers VALUES
  (103, 'Julie', '300 Maple St.', '555-6543');

SELECT * FROM golfers;

CREATE TABLE games
  (gameid int auto_increment primary key,
  golferid int,
  score int);

INSERT INTO games (golferid, score) VALUES (100, 110);

INSERT INTO games (golferid, score) VALUES (100, 115);

INSERT INTO games (golferid, score) VALUES (100, 105);

INSERT INTO games (golferid, score) VALUES (101, 110);

INSERT INTO games (golferid, score) VALUES (101, 112);

INSERT INTO games (golferid, score) VALUES (101, 130);

INSERT INTO games (golferid, score) VALUES (102, 110);
  
INSERT INTO games (golferid, score) VALUES (102, 125);

INSERT INTO games (golferid, score) VALUES (102, 120);

INSERT INTO games (golferid, score) VALUES (103, 110);

INSERT INTO games (golferid, score) VALUES (103, 130);

INSERT INTO games (golferid, score) VALUES (103, 115);

SELECT * FROM games;

SELECT golferid, name FROM golfers ORDER BY name;

SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 102;

 SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 103;