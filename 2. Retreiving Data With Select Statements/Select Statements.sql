CREATE TABLE courses(
courseID INT PRIMARY KEY AUTO_INCREMENT,
courseName VARCHAR(50) NOT NULL,
courseDurationMonths INT NOT NULL,
courseFee INT NOT NULL);

DESC courses;


-- Insert values in the table

INSERT INTO courses(courseName, courseDurationMonths, courseFee) VALUES
("The Complete Excel Mastery Course", 3, 1499);

INSERT INTO courses(courseName, courseDurationMonths, courseFee) VALUES
("DSA for Interview Preparation", 2, 4999);

INSERT INTO courses(courseName, courseDurationMonths, courseFee) VALUES
("SQL Bootcamp", 1, 2999);

SELECT * FROM courses;

-- Creating Learners Table
DROP TABLE learners;
CREATE TABLE learners(
	LearnerID INT AUTO_INCREMENT, 
    Learner_FirstName VARCHAR(50) NOT NULL,
    Learner_LastName VARCHAR(50) NOT NULL,
    learner_Email VARCHAR(50) NOT NULL,
    Learner_PhoneNum VARCHAR(15) NOT NULL,
    Learner_EnrollmentDate TIMESTAMP NOT NULL,
    Select_Course INT,
    YearOfExp INT NOT NULL,
    Learner_Company VARCHAR(50),
    Learner_SOJ VARCHAR(50) NOT NULL,
    Batch_Date TIMESTAMP NOT NULL,
    Location VARCHAR(50) NOT NULL,
    PRIMARY KEY(LearnerID),
    UNIQUE KEY(learner_Email),
    FOREIGN KEY(Select_Course) REFERENCES courses(courseID)
);

DESC learners;
SELECT * FROM learners;
-- Insert learners Details in the learners table

INSERT INTO learners(Learner_FirstName, Learner_LastName, learner_Email, Learner_PhoneNum, Learner_EnrollmentDate, Select_Course, YearOfExp, Learner_Company, Learner_SOJ, Batch_Date, Location) VALUES 
('Arun', 'Venkatesh', 'arun.venkatesh@example.com', '9123456780', '2024-01-05', 1, 8, 'Reliance', 'Linkedin', '2024-08-01', 'Mumbai'),
('Pallavi', 'Rao', 'pallavi.rao@example.com', '9123456783', '2024-01-22', 1, 5, 'Google', 'Youtube', '2024-08-04', 'Bangalore'),
('Sonal', 'Mehta', 'sonal.mehta@example.com', '9123456785', '2024-02-28', 1, 1, 'Adobe', 'Instagram', '2024-08-06', 'Delhi'),
('Vikram', 'Patil', 'vikram.patil@example.com', '9123456786', '2024-01-15', 1, 9, 'Accenture', 'Linkedin', '2024-08-07', 'Hyderabad'),
('Sneha', 'Khan', 'sneha.khan@example.com', '9123456789', '2024-01-28', 1, 5, 'Infosys', 'Instagram', '2024-08-10', 'Chennai'),
('Ajay', 'Reddy', 'ajay.reddy@example.com', '9123456792', '2024-01-19', 1, 2, 'TechMahindra', 'Youtube', '2024-08-13', 'Pune'),
('Radha', 'Mishra', 'radha.mishra@example.com', '9123456795', '2024-01-23', 1, 8, 'Adobe', 'Linkedin', '2024-08-16', 'Kolkata')

SELECT * FROM learners;

-- Learners for courseID 2 (enrollment before 2024-01-16)
INSERT INTO learners(Learner_FirstName, Learner_LastName, learner_Email, Learner_PhoneNum, Learner_EnrollmentDate, Select_Course, YearOfExp, Learner_Company, Learner_SOJ, Batch_Date, Location) VALUES 
('Meera', 'Nair', 'meera.nair@example.com', '9123456781', '2024-01-05', 2, 2, 'Flipkart', 'Linkedin', '2024-08-02', 'Mumbai'),
('Karthik', 'Ghosh', 'karthik.ghosh@example.com', '9123456784', '2024-01-11', 2, 7, 'Microsoft', 'Youtube', '2024-08-05', 'Bangalore'),
('Neha', 'Kapoor', 'neha.kapoor@example.com', '9123456787', '2024-01-08', 2, 3, 'Wipro', 'Instagram', '2024-08-08', 'Delhi'),
('Aman', 'Singh', 'aman.singh@example.com', '9123456790', '2024-01-13', 2, 4, 'HCL', 'Youtube', '2024-08-11', 'Hyderabad'),
('Geeta', 'Jain', 'geeta.jain@example.com', '9123456793', '2024-01-02', 2, 9, 'Google', 'Linkedin', '2024-08-14', 'Chennai'),
('Rohit', 'Bhat', 'rohit.bhat@example.com', '9123456796', '2024-01-05', 2, 5, 'Accenture', 'Youtube', '2024-08-17', 'Pune')

-- Learners for courseID 3 (enrollment before 2024-03-25)
INSERT INTO learners(Learner_FirstName, Learner_LastName, learner_Email, Learner_PhoneNum, Learner_EnrollmentDate, Select_Course, YearOfExp, Learner_Company, Learner_SOJ, Batch_Date, Location) VALUES 
('Sunil', 'Desai', 'sunil.desai@example.com', '9123456782', '2024-02-12', 3, 4, 'Amazon', 'Linkedin', '2024-08-03', 'Kolkata'),
('Ravi', 'Sharma', 'ravi.sharma@example.com', '9123456788', '2024-02-20', 3, 6, 'TCS', 'Youtube', '2024-08-09', 'Mumbai'),
('Priya', 'Iyer', 'priya.iyer@example.com', '9123456791', '2024-02-25', 3, 7, 'Cognizant', 'Instagram', '2024-08-12', 'Bangalore'),
('Manoj', 'Joshi', 'manoj.joshi@example.com', '9123456794', '2024-02-10', 3, 4, 'Microsoft', 'Linkedin', '2024-08-15', 'Delhi'),
('Lata', 'Kumar', 'lata.kumar@example.com', '9123456797', '2024-02-17', 3, 3, 'Cognizant', 'Instagram', '2024-08-18', 'Hyderabad'),
('Sumit', 'Roy', 'sumit.roy@example.com', '9123456700', '2024-02-22', 3, 5, 'HCL', 'Linkedin', '2024-08-21', 'Chennai'),
('Asha', 'Seth', 'asha.seth@example.com', '9123456703', '2024-02-08', 3, 1, 'Google', 'Youtube', '2024-08-24', 'Pune'),
('Rajan', 'Chauhan', 'rajan.chauhan@example.com', '9123456706', '2024-02-14', 3, 3, 'Accenture', 'Instagram', '2024-08-27', 'Kolkata'),
('Leela', 'Gandhi', 'leela.gandhi@example.com', '9123456709', '2024-02-18', 3, 5, 'Infosys', 'Linkedin', '2024-08-30', 'Mumbai');


SELECT * FROM learners;


-- Data Analysis [Employee, Courses, Learners]

-- 1. Give me the record of the employee getting highest salaray

SELECT * FROM employee 
ORDER BY Salary DESC 
LIMIT 1;

SELECT * FROM employee;

-- Another Method

SELECT * FROM employee WHERE Salary = (SELECT MAX(Salary) FROM employee);

-- 2. Give me the record of the employee getting highest salary and age is bigger than 21

SELECT * FROM employee WHERE Age > 21
ORDER BY Salary DESC 
LIMIT 1;


-- 3. Display the number of enrollment in the website

SELECT COUNT(*) as Num_of_Enrollments FROM learners;

-- 4. Display the number of enrollment in the website for the course id = 3

SELECT COUNT(*) as Num_of_Enrollments FROM learners WHERE Select_Course = 3;


-- 5. Count the number of learners enrolled in the month of jan
SELECT COUNT(*) as Leaners_Enrolled FROM learners 
WHERE Learner_EnrollmentDate LIKE '%-01-%';

SELECT * FROM learners;
-- 6. Update the years of experience and company 

UPDATE learners SET Learner_Company = "Reliance" WHERE LearnerID = 4;


-- 7. Count Companies of Learners
-- Count => Count the non null entries
-- Distinct => Counts the unique entries

SELECT COUNT(DISTINCT Learner_Company) FROM learners;