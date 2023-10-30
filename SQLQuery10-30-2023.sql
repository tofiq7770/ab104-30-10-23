CREATE DATABASE AB104
use AB104

CREATE TABLE Students (
    Name VARCHAR(25) NOT NULL,
    Surname VARCHAR(25) DEFAULT 'XXX',
    Age INT CHECK (Age >= 16),
    Average DECIMAL(5,2) CHECK (Average >= 0 AND Average <= 100)
)

INSERT INTO Students (Name, Surname, Age, Average) VALUES ('Tofiq', 'Nasibli', 19, 100.0)
INSERT INTO Students (Name, Surname, Age, Average) VALUES ('Ali', 'Huseynov', 19, 85.8)
INSERT INTO Students (Name, Surname, Age, Average) VALUES ('Aydan', 'Ahmedova', 20, 77.5)
INSERT INTO Students (Name, Surname, Age, Average) VALUES ('Ali', 'Shukurlu', 21, 24.7)


SELECT * FROM Students WHERE Average > 51

SELECT * FROM Students WHERE Average > 51 AND Average < 90

SELECT * FROM Students WHERE Name LIKE 'A%' AND Name LIKE '%n'

SELECT * FROM Students WHERE Average < 51 AND Age > 20

