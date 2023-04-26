USE sakila;
-- 1.what is the command to display the current and time
SELECT date_format(NOW(),"%y-%m-%d %h:%m:%s") as currentdate;

-- 2)set the current date and time as default for the hire_date
CREATE TABLE Emp(emp_id int not null,ename varchar(50),salary int,hire_data DATETIME DEFAULT NOW());
SELECT * FROM Emp;


-- 3.what is the data type for inserting date
INSERT INTO Emp VALUES(101,"Naveen",4500,CURRENT_DATE());
INSERT INTO Emp VALUES(102,"Mahi",5000,CURRENT_DATE());
INSERT INTO Emp VALUES(103,"Kelly",4500,CURRENT_DATE());
INSERT INTO Emp VALUES(104,"John",3500,CURRENT_DATE());
INSERT INTO Emp VALUES(105,"sines",6500,CURRENT_DATE());
SELECT * FROM Emp;

insert INTO Emp VALUES(107,'RAGHU',6000,now());
INSERT INTO Emp VALUES(108,"JAI",5000,current_timestamp());
INSERT INTO Emp VALUES(109,"kumari",7000,localtime());
INSERT INTO Emp VALUES(110,"Priya",8000,localtimestamp());
INSERT INTO Emp VALUES(111,"Sai",9000,current_date());


