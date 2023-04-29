USE wipro;
SELECT * FROM Employee;

ALTER TABLE Employee add column salary int;
ALTER TABLE Employee
ADD COLUMN Joining_date varchar(100);

-- UPDATE Employee SET  Joining_date = Year();

UPDATE Employee SET Joining_date = Extract(Year FROM STR_TO_DATE(CONCAT(YEAR(CURDATE()), '-01-01'), '%Y-%m-%d'));

ALTER TABLE Employee add column experience varchar(50);

UPDATE Employee SET experience = Joining_date-extract(Year FROM '2020-01-01');

UPDATE Employee SET salary = 50000 WHERE experience > 2 AND experience <= 3;
UPDATE employees SET salary = 60000 WHERE experience > 3;

SELECT eid, ename
FROM Employee
WHERE eid = 1;

SELECT eid,ename,Address
FROM Employee
where Address="Hyderabad"
GROUP BY Address,eid,ename
order by eid ,ename Desc;



SELECT eid,ename,Address
FROM Employee
where Address="Hyderabad"
GROUP BY Address,eid,ename
order by 2,1;

SELECT eid,ename,Address FROM Employee
WHERE Address="Tokyo"
GROUP BY ename,eid,Address;

SELECT * FROM Employee;

ALTER TABLE Employee DROP COLUMN hire_date;









