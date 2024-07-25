DESC employee;
ALTER TABLE employee ADD column jobPosition VARCHAR(50);

ALTER TABLE employee MODIFY column FirstName VARCHAR(30);

ALTER TABLE employee DROP column jobPosition;


-- Truncate in SQL
-- It deletes the whole table data while delete command removes single data entry

-- DataTypes in Sql -> DECIMAL

DESC courses;
INSERT INTO courses(courseName, courseDurationMonths, courseFee) VALUES
("DSA FOR PYTHON", 6.5, 10000);

SELECT * FROM courses;

ALTER TABLE courses MODIFY COLUMN courseDurationMonths decimal(3,1);



-- TimeStamp Command

CREATE TABLE NAMES_1(uid INT PRIMARY KEY auto_increment, 
FirstName VARCHAR(50),
LastName VARCHAR(50),
Logged_In INT,
Logged_At TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);

INSERT INTO NAMES_1 (FirstName, LastName, Logged_In) VALUES
("Tanay", "Mukadam", "1");

SELECT * FROM NAMES_1;

UPDATE NAMES_1 SET Logged_IN = 0
WHERE UID = 1;