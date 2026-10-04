##-- CRUD Operations


-- lists the names of all databases in a PostgreSQL server
SELECT datname FROM pg_database;

-- Creating new Database
CREATE database test;

-- Deleting Existing Database
drop database test;



-- Creating table

CREATE TABLE person(
    id INT,
    name VARCHAR(100),
    city VARCHAR(100)
);

-- INSERT DATA into TABLE
INSERT INTO person(id, name, city)
VALUES 
(101, 'Raju', 'Delhi'),
(102, 'Sham', 'Mumbai'),
(103, 'Paul', 'Chennai'),

-- if providing details for all the columns
INSERT INTO person
VALUES 
(104, 'Alex', 'Pune');


--Reading Data

-- all columns
SELECT * FROM person;

--Specific Columns
SELECT name, city FROM person;

-- Updating Data
UPDATE person
SET city ='Banglore'
WHERE
name = 'Raju';

-- Deleting Data
DELETE FROM person
WHERE id = 104;


