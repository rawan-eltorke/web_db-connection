CREATE DATABASE students;
USE students;
CREATE TABLE IF NOT EXISTS Students (
    stu_ID INT PRIMARY KEY,
    stu_Name VARCHAR(100),
    Age INT,
    CGPA FLOAT ,
    Department VARCHAR(100)
);
INSERT INTO Students (Stu_ID,Stu_Name, Age, CGPA, Department) VALUES
(22010091,'Raneen Ashraf Yehia', 20, 3.7, 'AI'),
(22010093,'Rewan Gaber Khalaf', 21, 3.8, 'Web Development'),
(22010094,'Rawan Abdo Ahmed', 20, 3.8, 'Data Science'),
(22010253,'Mariam Mohamed Ramadan', 20, 3.7,'Cyber Security'),
(22010379,'Kenzy Abd Elkreem Mohamed', 21, 3.7,'Data Science');
SELECT * From Students ;