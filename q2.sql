-- create table of student and select student who scored 75+

  CREATE TABLE student
(
roll_no int ,
name VARCHAR(40),
city varchar(40), 
marks int 
);

INSERT INTO student
(roll_no,name,city,marks)
values
(110,"adam","delhi",76),
(108,"bob","mumbai",65),
(124,"casey","pune",94),
(112,"duke","pune",80);

SELECT *FROM student
WHERE marks>75;
USE college;
 select name,city FROM student;
 
 SELECT city,max(marks) as max_marks 
 FROM student
GROUP BY city;

SELECT AVG(marks)
FROM student;
 
ALTER TABLE student
ADD column grade VARCHAR(50);
 
UPDATE student
SET grade=
CASE
    WHEN marks > 80 THEN 'O'
    WHEN marks BETWEEN 70 AND 80 THEN 'A'
    WHEN marks BETWEEN 60 AND 70 THEN 'B'
END;
SELECT *FROM student;
SET SQL_SAFE_UPDATES = 0;
