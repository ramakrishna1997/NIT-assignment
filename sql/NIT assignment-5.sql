-- 1.Select all records from the Customers table, sort the result alphabetically by the column City.

-- 2.Select all records from the Customers table, sort the result reversed alphabetically by the column City.

-- 3.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.

-- 4.Select all records where the value of the City column starts with the letter "a".

-- 5.Select all records where the value of the City column ends with the letter "a".

CREATE DATABASE jp;
USE jp;
CREATE TABLE Customer(cust_id INT,cname VARCHAR(250),country VARCHAR(250),city VARCHAR(250),product VARCHAR(400),price int);
DROP TABLE Customer;
DESCRIBE Customer;
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(101,"James","USA","Washington","Airpods",1200);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(102,"Jessy","USA","Florida","Cycle",1800);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(103,"Raghu","India","New Delhi","Novels",250);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(104,"Sham","UK","Londan","Bike spare parts",3500);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(105,"Samantha","Russia","Masscow","tables",4500);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(106,"Rebbaica","USA","Los Angels","chocolates",150);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(107,"Siva","USA","NY","Washing Mechine",180);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(108,"Kal","Franch","Paries","Bikes",2500);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(109,"Kanga","Brazil","NA","Chills",250);
INSERT INTO Customer(cust_id,cname,country,city,product,price) VALUES(110,"Kango","NA","Venzulai","Oil",550);

SELECT * FROM Customer;
-- 1.Select all records from the Customers table, sort the result alphabetically by the column City.
SELECT * FROM Customer
ORDER BY city ASC;
-- 2.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
SELECT * FROM Customer
ORDER BY city DESC;

-- 3.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.
SELECT * FROM Customer
ORDER BY country ASC,city Asc;
-- 4.Select all records where the value of the City column starts with the letter "a"
SELECT * FROM Customer
WHERE city LIKE "a%";
-- 5.Select all records where the value of the City column ends with the letter "a".
SELECT * FROM Customer
WHERE city LIKE "%a"











