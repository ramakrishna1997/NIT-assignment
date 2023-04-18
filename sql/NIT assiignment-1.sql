use yas;
create table student(stud_id int,stud_name varchar(50),stud_subjects varchar(50),stud_marks int);
select * from student;
ALTER table student drop column address;

INSERT INTO student values(1001,"RK","Maths",45);
INSERT INTO student(stud_id,stud_name,stud_subjects,stud_marks) values(1002,"Yash","Python",65);
ALTER table  student add column location varchar(50) ;

UPDATE student SET location="Hyderabad"
where stud_id=1001;

SELECT * FROM student_details;

ALTER TABLE student RENAME student_details;

-- ALTER TABLE table_name
-- MODIFY column_name1 new_data_type,
-- CHANGE column_name2 new_column_name2 new_data_type;

drop table student;


ALTER TABLE student_details
MODIFY stud_marks  double;

ALTER TABLE student_details
MODIFY column stud_marks int;

ALTER TABLE student_details
CHANGE COLUMN stud_marks mark VARCHAR(50);
