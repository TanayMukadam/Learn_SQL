CREATE TABLE employee(
	EID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL
);

DESC employee;

SHOW TABLES;
/*
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Tanay", "Mukadam", 23, 50000, "Mumbai");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Hiya", "Gusai", 21, 30000, "Pune");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Aditya", "Kasar", 24, 130000, "Thane");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Vaama", "Nikam", 23, 300000, "NewYork");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Vaishnavi", "Sarangle", 23, 20000, "Powai");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Darshali", "Pawar", 23, 20000, "Estate");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Saurav", "Shetty", 21, 60000, "Mangalore");
*/

SELECT * FROM employee;

-- Give me the employee details having salary more than 1,00,000

SELECT * FROM employee WHERE Salary > 100000;
SELECT FirstName, LastName FROM employee WHERE Salary > 100000;

-- Give the records of the employee having age more than 21
SELECT * FROM employee WHERE Age > 21;


-- Update the last name of Tanay with Patil

UPDATE employee SET LastName = "Mukadam" WHERE EID = 1 AND FirstName = "Tanay";

SELECT * FROM employee;


-- Delete the record of EID 4

DELETE FROM employee WHERE EID = 4;

SELECT * FROM employee;