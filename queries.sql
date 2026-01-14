
-- 1. Display all students from the Students table
SELECT * FROM Students;

-- ------------------------------------------------

-- 2. Display students along with their department names
-- This query uses JOIN to show relationship between
-- Students and Departments tables
SELECT s.Name, d.DeptName
FROM Students s
JOIN Departments d ON s.DeptID = d.DeptID;

-- ---------------------------------------------------

-- 3. Display only female students
SELECT * FROM Students
WHERE Gender = 'Female';

-- ------------------------------------------------

-- 4. Display students who belong to Lahore city
SELECT * FROM Students
WHERE City = 'Lahore';

-- ------------------------------------------------

-- 5. Display students who are older than 19 years
SELECT * FROM Students
WHERE Age > 19;

-- ------------------------------------------------

-- 6. Display students from Computer Science department
-- DeptID = 1 represents Computer Science
SELECT Name FROM Students
WHERE DeptID = 1;

-- ------------------------------------------------

-- 7. Count total number of students
SELECT COUNT(*) AS Total
FROM Students;

-- ------------------------------------------------

-- 8. Display department-wise total number of students
SELECT DeptID, COUNT(*) AS Total
FROM Students
GROUP BY DeptID;
