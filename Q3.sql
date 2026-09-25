-- CREATE DATABASE OFFICE AND INSERT EMPLOYEE DATA
CREATE   DATABASE  IF NOT EXISTS office;

CREATE TABLE employee
(
EMPID INT PRIMARY KEY,
FirstName VARCHAR(90),
LastName VARCHAR(80),
Department VARCHAR(90),
Salary DECIMAL(10 ,2),
HireDate DATE
);
INSERT INTO employee
(EmpID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(101,'Alice','Johnson','IT',6500, '2020-03-15'),
(102, 'Mark', 'Rivera', 'HR', 4800, '2019-07-22'),
(103, 'Sophia', 'Lee', 'Finance', 7200, '2021-01-10'),
(104, 'Daniel', 'Kim', 'IT', 5800, '2018-11-05'),
(105, 'Emma', 'Brown', 'Marketing', 5300, '2022-04-18'),
(106, 'Liam', 'Patel', 'Finance', 6900, '2020-09-29'),
(107, 'Olivia', 'Garcia', 'HR', 4600, '2017-06-30'),
(108, 'Noah', 'Thompson', 'IT', 7500, '2023-02-12'),
(109, 'Ava', 'Martinez', 'Marketing', 5100, '2019-12-02'),
(110, 'Ethan', 'Davis', 'Finance', 8000, '2016-05-14');
SELECT *FROM employee;

-- SELECT FILTERED COLUMN THAT ARE MENTIONED IN QUETIONS
SELECT FirstName, LastName,Salary FROM employee;

--  ALL THE EMPLOYEE WHO ARE WORK IN IT DEPARTMENTS
SELECT *FROM employee
WHERE Department='IT';


SELECT *FROM employee
WHERE Salary>6000;

SELECT *FROM employee
ORDER BY HireDate DESC;  

SELECT DISTINCT Department
FROM employee;
 SELECT *FROM employee
 WHERE FirstName LIKE "A%";
 
 SELECT *FROM employee
 WHERE Salary BETWEEN 4000 AND 7000;
 
 SELECT AVG(Salary)
 FROM employee;
 
 SELECT Department, COUNT(*) AS Numberofemployee
 FROM employee
 GROUP BY Department
HAVING COUNT(*)>2;
