USE [db_hospital_12.04]
GO
-- Task 1: Display the contents of the chambers table.
SELECT * FROM Chambers;

-- Task 2: Display the names and phone numbers of all doctors.
SELECT Name, Phone FROM Doctors;

-- Task 3: Display all floors without repetitions on which they are placed Chamber.
SELECT DISTINCT Floor FROM Chambers;

-- Task 4: Display the names of diseases under the name "Name of Disease" and their severity under the name "Severity of Disease."
SELECT Name AS "Name of Disease", Severity AS "Severity of Disease" FROM Diseases;

-- Task 5: Use the FROM expression for any three database tables using aliases for them.
SELECT * FROM Departments AS D, Doctors AS Doc, Examinations AS E;

-- 6. Display the names of the branches located in building 5 and which have a funding fund of less than 30,000.
SELECT Name 
FROM Departments 
WHERE Building = 5 

-- 7. Display the names of the compartments located in the 3rd building.
SELECT Name 
FROM Chambers 
WHERE Building = 3;

-- 8. Display the names of the chambers located in buildings 4 and 5 on 1st floor.
SELECT Name 
FROM Chambers 
WHERE Building IN (4, 5) 

-- 9. Withdraw names, buildings, and funds for financing branches, located in buildings 3 or 6 and having a funding fund of less than 11,000 or more than 25,000.
SELECT Name, Building, Financing 
FROM Departments 
WHERE Building IN (3, 6) 

-- 10. Withdraw the names of doctors whose salary (the amount of the bet and allowances) exceed 1500.
SELECT Name 
FROM Doctors 
WHERE Premium + Rate > 1500;

-- 11. Withdraw the names of doctors who have half the salary exceeds three times the increase.
SELECT Name 
FROM Doctors 
WHERE (Premium + Rate)/2 > 3 * Premium;

-- 12. Display the names of the examinations without repetitions that are performed in the first three days of the week from 12:00 to 15:00
SELECT DISTINCT Name 
FROM Examinations 
WHERE DayOfWeek BETWEEN 1 AND 3 

-- 13. Display the names and numbers of compartments buildings located in housings 1, 3, 8 or 10.
SELECT Name, Building 
FROM Chambers 
WHERE Building IN (1, 3, 8, 10);

-- 14. Derive disease names of all severities except 1st and 2nd.
SELECT Name 
FROM Diseases 
WHERE Severity > 2;

-- 15. Display the names of branches that are not located in the 1st or 3rd Corps.
SELECT Name 
FROM Departments 
WHERE Building NOT IN (1, 3);

-- 16. Display the names of branches located in the 1st or 3rd building.
SELECT Name 
FROM Departments 
WHERE Building IN (1, 3);

-- 17. Display the names of doctors starting with the letter "N."
SELECT Name 
FROM Doctors 
WHERE Name LIKE 'N%';
