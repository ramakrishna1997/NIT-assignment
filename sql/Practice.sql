SELECT * FROM Employee
SELECT * FROM Department

--Now Iam finding the salary from Employee

SELECT * FROM Employee
WHERE salary>30000
ORDER BY salary DESC;

-- Wild card operator using 
SELECT ename,emp_id FROM Employee
WHERE emp_id IN (SELECT emp_id FROM Department
WHERE dname LIKE 'R%')

-- some commands are used
SELECT ename,emp_id,SUM(salary) as total 
FROM Employee
WHERE salary>(SELECT AVG(salary) FROM Employee)
GROUP BY ename,emp_id
ORDER BY total DESC;

SELECT * FROM Employee
SELECT * FROM Department

SELECT ename,emp_id
FROM Employee
WHERE emp_id IN (SELECT emp_id
FROM Department
WHERE location='Hyderabad')

--Natural Joins 
SELECT ename,emp_id,location,salary 
FROM Employee
NATURAL JOIN Department

-- SELF JOIN
SELECT a.ename,a.emp_id,a.salary,b.ename,b.emp_id,b.salary
FROM Employee a,Employee b
WHERE a.salary<b.salary
ORDER BY a.salary DESC,b.salary DESC

-- Full outer join
SELECT a.ename,a.salary,b.location,b.data_of_join,b.dname
FROM Employee a
FULL OUTER JOIN Department b ON a.emp_id=b.emp_id

--LEFT JOIN

SELECT b.location,b.data_of_join,a.ename,a.salary 
FROM Employee a
LEFT JOIN Department b ON a.emp_id=b.emp_id
ORDER BY a.salary DESC

--Right JOIN
SELECT a.ename,SUM(a.salary) as total,b.location 
FROM Employee a
RIGHT JOIN Department b ON a.emp_id =b.emp_id
GROUP BY a.ename,b.location
ORDER BY total DESC

-- INNER JOIN
SELECT a.ename,a.salary,b.location
FROM Employee a
INNER JOIN Department b ON a.emp_id=b.emp_id

-- JOIN 
SELECT a.ename ,a.salary,b.location
FROM Employee a
JOIN Department b ON a.emp_id =b.emp_id


--sub query
SELECT * FROM Employee
SELECT * FROM Department
SELECT SUM(salary) as total FROM (SELECT MAX(salary) as Max_of_salary FROM Employee) AS subquery;














				
				