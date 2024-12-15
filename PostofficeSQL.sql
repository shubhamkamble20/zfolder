CREATE DATABASE PostOfficeDB;

USE PostOfficeDB;

CREATE TABLE PostOffice (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Firstname NVARCHAR(50) NOT NULL,
    Lastname NVARCHAR(50) NOT NULL,
    Address NVARCHAR(255) NOT NULL,
    Schemename NVARCHAR(100),
    Balance DECIMAL(10, 2),
    NoOfYears INT,
    Mobile NVARCHAR(15) NOT NULL
);

INSERT INTO PostOffice (Firstname, Lastname, Address, Schemename, Balance, NoOfYears, Mobile)
VALUES 
('John', 'Doe', '123 Elm Street', 'Savings Plan', 15000.50, 5, '9876543210'),
('Jane', 'Smith', '456 Oak Avenue', 'Retirement Plan', 20000.75, 10, '8765432109'),
('Alice', 'Johnson', '789 Pine Drive', 'Child Education Plan', 12000.00, 3, '7654321098'),
('Robert', 'Brown', '321 Maple Lane', 'Fixed Deposit', 25000.00, 8, '6543210987'),
('Emily', 'Davis', '654 Cedar Boulevard', 'Savings Plan', 18000.25, 6, '5432109876');

select * from PostOffice