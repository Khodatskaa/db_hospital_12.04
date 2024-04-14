USE [db_hospital_12.04]
GO 

INSERT INTO Departments (Building, Financing, Floor, Name)
VALUES 
    (1, 50000.00, 3, 'Department A'),
    (2, 60000.00, 2, 'Department B'),
    (3, 70000.00, 4, 'Department C');

INSERT INTO Diseases (Name, Severity)
VALUES 
    ('Disease X', 3),
    ('Disease Y', 2),
    ('Disease Z', 4);

INSERT INTO Doctors (Name, Phone, Premium, Rate, Surname)
VALUES 
    ('John Doe', '1234567890', 1000.00, 5000.00, 'Doe'),
    ('Jane Smith', '0987654321', 1500.00, 6000.00, 'Smith'),
    ('Michael Johnson', '1112223333', 1200.00, 5500.00, 'Johnson');

INSERT INTO Examinations (DayOfWeek, EndTime, Name, StartTime)
VALUES 
    (1, '14:00', 'Exam 1', '10:00'),
    (2, '15:30', 'Exam 2', '09:00'),
    (3, '13:45', 'Exam 3', '11:00');

INSERT INTO Chambers (Building, Floor, Name)
VALUES 
    (1, 1, 'Chamber A'),
    (2, 3, 'Chamber B'),
    (3, 2, 'Chamber C');
