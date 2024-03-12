create database  edu_institute;
use edu_institute;
#create students table
create table students
(stud_id int primary key, name VARCHAR(50), age int, gender char(1), enrolment_date date, program  varchar(50));
#data insertion
insert into students values
(001, "Haman", 22, "m", "2020-02-20", "data science"),
(027, "Cynthia", 20, "f", "2021-03-16", "computer science"),
(023, "Moses", 24, "m", "2022-02-23", "cyber security"),
(034, "Harriet", 19, "f", "2024-07-09", "data science"),
(025, "Sheila", "23", "f",  "2022-12-25", "computer science"),
(030, "Brian", 22, "m", "2023-02-20", "business administration"),
(002, "John", 21, "m", "2023-04-16", "data sciennce"),
(080, "Dorothy", 24, "f", "2020-02-23", "computer science"),
(028, "Bruno", 22, "m", "2023-07-09", "public health"),
(065, "Faith", "25", "f", "2020-12-25", "business administration");
select *from students;
#select students enrolled in data science
select * from students where program = "data science";
# Total number of students
SELECT COUNT(*) AS "Total Student" from students;
#Dispaly the current date in  a column
SELECT CURRENT_DATE AS "Today's Date";

#Select names and enrolment dates but display names in upper case
SELECT UPPER(name) AS name_in_uppercase, enrolment_date
FROM students;
SELECT program, COUNT(*) AS "Number of Students"
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;
#Display youngest student name and age
SELECT name, age
FROM students
WHERE age = (SELECT MIN(age) FROM students);