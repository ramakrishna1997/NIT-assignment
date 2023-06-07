CREATE TABLE Emp(Emp_id INT,first_name VARCHAR(250),last_name VARCHAR(250),Email VARCHAR(250),Phone_Number VARCHAR(50),Hire_date VARCHAR(50),
				Job_id INT,Commission_Pct INT,Manger_Id INT ,Department_ID INT)
CREATE TABLE Dep(Department_ID INT,Department_Name VARCHAR(250),Manger_Id INT,Location_ID VARCHAR(250) )
CREATE TABLE Locations(Location_ID VARCHAR(250),postal_code VARCHAR(250),State VARCHAR(250),Country VARCHAR(250))
DROP TABLE Locations
DROP TABLE Country
CREATE TABLE Country(Country VARCHAR(250),region_id VARCHAR(250))

INSERT INTO Emp(Emp_id,first_name,last_name,Email,Phone_Number,Hire_date,Job_id,Commission_Pct,Manger_Id,Department_ID) VALUES(
101,'Rama','Krishna','kramakrishna7987@gmail.com','9154473441','2021',2456,2000,1156,2456)
INSERT INTO Emp(Emp_id,first_name,last_name,Email,Phone_Number,Hire_date,Job_id,Commission_Pct,Manger_Id,Department_ID) VALUES(
102,'Thirupathi','Erra','thirupathierra1997@gmail.com','86879534','2022',2457,3000,1157,2457)
INSERT INTO Dep VALUES (2456,'Software','1156','Hyd')
INSERT INTO Dep VALUES(2457,'IT','1157','Hyd')

INSERT INTO Locations VALUES('Hyd','500018','Telangana','India')
INSERT INTO Locations VALUES('London','500018','Kensington and Chelsea','UK')
INSERT INTO Locations VALUES('warangla','502976','Telangana','India')
truncate Country
INSERT INTO Country VALUES('India','East')
INSERT INTO Country VALUES('India','West')

-- Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.

SELECT DISTINCT a.first_name ,a.last_name,a.email,a.phone_number,b.department_name,c.state,c.postal_code 
FROM Emp a
LEFT JOIN Dep b ON a.manger_id=b.manger_id
LEFT JOIN Locations c ON b.location_id=c.location_id
WHERE c.location_id='Hyd'

-- Write a query to find the name (first_name, last name), department ID and name of all the employees
SELECT a.first_name,a.last_name,b.department_ID
FROM  Emp a
LEFT JOIN Dep b ON a.manger_id=b.manger_id

-- Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London
INSERT INTO Emp(Emp_id,first_name,last_name,Email,Phone_Number,Hire_date,Job_id,Commission_Pct,Manger_Id,Department_ID) VALUES(
103,'JAI','Kumar','jaikumar2002@gmail.com','63048756','2023',2459,4000,118,2458)
INSERT INTO Locations values('London','E1','Kensington and Chelsea','UK')

SELECT a.first_name,a.last_name,a.job_id,b.department_id,b.department_name,b.location_id
FROM Emp a
JOIN Dep b ON a.manger_id=b.manger_id
LEFT JOIN Locations c ON b.location_id=c.location_id
WHERE c.location_id LIKE 'L%'

SELECT * FROM Emp
SELECT * FROM Dep
SELECT * FROM Locations
SELECT * FROM Country

INSERT INTO Dep VALUES(2458,'Marketing','1158','London')










































