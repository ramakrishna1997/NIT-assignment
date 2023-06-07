CREATE DATABASE ql;
USE ql;
-- tables-3
-- 1.employee(EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID )
-- 2.department(DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID).
-- location (location_id  | street_address   |postal_code | city | state_province | country_id)
-- 1.Write a query to find the name (empno, empname) and the salary of the employees who have a higher salary than the employee whose name='raj'
-- 2.Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
-- 3.question:Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department
-- 4.Write a query to find the name (first_name, last_name) of the employees who are managers.
-- 5.Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary

CREATE TABLE Employee(Employee_id INT,first_name VARCHAR(250),last_name VARCHAR(250),Email VARCHAR(250),Phone_Number VARCHAR(250),Hire_Date VARCHAR(250),Job_id INT,Salary INT,Commission_Pct INT,Manager_id INT,Department_id INT);
CREATE TABLE Department(department_id INT,Department_Name VARCHAR(250),Manager_id INT,Location_id VARCHAR(250));
CREATE TABLE Location(location_id VARCHAR(50),street_address VARCHAR(250),Postal_code INT,city VARCHAR(250),state_province VARCHAR(250),Country_id VARCHAR(250));
SELECT count(*) FROM Employee;
SELECT count(*) FROM Department;
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("India","A/13 Hind Saurashtra Industrial Estate, Andheri Kurla Road, J.b.nagar",400059,"Mumbai","Maharashtra","+91");
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("India"," Near Jawaddi Bridge, Canal Road Model Town","Ludhiana","Punjab","+91");
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("USA","2958 Crosswind Drive",42240," Kentucky","+1");
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("Germany","Leipziger Strasse 40",54296," Rheinland-Pfalz","Trier Heiligkreuz","+49");
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("Austrail","71 Rose Street",3783,"Gembrook","NA","+61");
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("USA"," 1451 Langtown Road",45840,"Ohio","NA","+1");
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("India"," 205, Arihant Plaza, 205arihantplazamalviyanagarjp", 302017,"Jaipur","Rajasthan","+91");
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("Japan","159-1074, Daikominami",850,"Higashi-ku Nagoya-shi","Aichi","+81");
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("India","17-1-380/e/7, Santosh Nagar X Roads",500059,"Hyderabad","AP",""+91);
INSERT INTO Location(Location_id,street_address,Postal_code,city,state_province,Country_id)  VALUES("London","94 Abingdon Road",276,"Brandon","United Kingdom","+44");

SELECT * FROM Location;
SELECT * FROM Employee;
SELECT * FROM Department;

CREATE TABLE Emp(empno INT,ename varchar(250),salary int );
INSERT INTO Emp(empno,ename,salary) VALUES(101,"Rama krishna",56000);
INSERT INTO Emp(empno,ename,salary) VALUES(102,"Jai Ram",68000);
INSERT INTO Emp(empno,ename,salary) VALUES(103,"Raj",80000);
INSERT INTO Emp(empno,ename,salary) VALUES(104,"Naruto",65000);
INSERT INTO Emp(empno,ename,salary) VALUES(105,"raj kumar",76000);
INSERT INTO Emp(empno,ename,salary) VALUES(106,"Ramya ",35000);
INSERT INTO Emp(empno,ename,salary) VALUES(107,"Rama",36000);
INSERT INTO Employee(Employee_id,first_name,last_name,Email,Phone_Number,Hire_Date,Job_id,salary,commission_Pct,Manager_id,Department_id) VALUES (1109,"Don","Lazar","Lazar8345@gmail.com","988756874","2023","1164",75000,0,1018,11463);
INSERT INTO Employee(Employee_id,first_name,last_name,Email,Phone_Number,Hire_Date,Job_id,salary,commission_Pct,Manager_id,Department_id) VALUES (1111,"John","Lazar","John567@gmail.com","988756875","2022","1166",85000,0,1020,11465);
INSERT INTO Department(department_id,Department_Name,Manager_id,Location_id) VALUES(11463,"IT",1018,"India");
INSERT INTO Department(department_id,Department_Name,Manager_id,Location_id) VALUES(11466,"IT",1020,"USA");

-- 1.Write a query to find the name (empno, empname) and the salary of the employees who have a higher salary than the employee whose name='raj'
SELECT * FROM Emp;
SELECT empno,ename,salary
FROM Emp
WHERE salary>=(SELECT MAX(salary) FROM Emp 
WHERE ename="Raj");

SELECT COUNT(*) FROM Employee;

-- 2.Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
-- Department(department_id INT,Department_Name VARCHAR(250),Manager_id INT,Location_id VARCHAR(250));
-- Employee(Employee_id INT,first_name VARCHAR(250),last_name VARCHAR(250),Email VARCHAR(250),Phone_Number VARCHAR(250),Hire_Date VARCHAR(250),Job_id INT,Salary INT,Commission_Pct INT,Manager_id INT,Department_id INT);

SELECT * FROM Location;
SELECT * FROM Employee;
SELECT * FROM Department;

SELECT a.first_name,a.last_name,b.Department_Name 
FROM Employee a
JOIN Department b ON a.department_id=b.department_id
WHERE b.Department_Name="IT";

-- 3.Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department
SELECT a.first_name,a.last_name,b.Department_Name,c.location_id
FROM Employee a
JOIN Department b ON a.department_id=b.department_id
JOIN Location c ON b.location_id=c.location_id
WHERE b.Department_Name="Manager" and c.location_id="USA";

-- 4.Write a query to find the name (first_name, last_name) of the employees who are managers.
SELECT concat(first_name,last_name) as name FROM
Employee 
WHERE manager_id IN (SELECT manager_id FROM Department WHERE Department_Name='Manager'
GROUP BY manager_id);

SELECT a.first_name,a.last_name,b.Department_Name 
FROM Employee a
JOIN Department b ON a.department_id=b.department_id
WHERE b.Department_Name="Manager";



-- 5.Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary
SELECT CONCAT(first_name,last_name) AS name ,salary 
FROM Employee
WHERE salary>(SELECT AVG(salary) FROM Employee)
ORDER BY salary DESC;

SELECT salary FROM Employee

SELECT * FROM Location


























































































































































