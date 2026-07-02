CREATE OR REPLACE PACKAGE EmployeeManagement IS

PROCEDURE HireEmployee(
id NUMBER,
name VARCHAR2,
position VARCHAR2,
salary NUMBER,
dept VARCHAR2);

PROCEDURE UpdateEmployee(
id NUMBER,
salary NUMBER);

FUNCTION AnnualSalary(
id NUMBER)
RETURN NUMBER;

END;
/

CREATE OR REPLACE PACKAGE BODY EmployeeManagement IS

PROCEDURE HireEmployee(
id NUMBER,
name VARCHAR2,
position VARCHAR2,
salary NUMBER,
dept VARCHAR2)
IS
BEGIN
INSERT INTO Employees
VALUES(id,name,position,salary,dept,SYSDATE);
END;

PROCEDURE UpdateEmployee(
id NUMBER,
salary NUMBER)
IS
BEGIN
UPDATE Employees
SET Salary=salary
WHERE EmployeeID=id;
END;

FUNCTION AnnualSalary(
id NUMBER)
RETURN NUMBER
IS
s NUMBER;
BEGIN
SELECT Salary
INTO s
FROM Employees
WHERE EmployeeID=id;

RETURN s*12;
END;

END;
/