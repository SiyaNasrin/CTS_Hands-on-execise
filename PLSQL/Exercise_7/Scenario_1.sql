CREATE OR REPLACE PACKAGE CustomerManagement IS

PROCEDURE AddCustomer(
id NUMBER,
name VARCHAR2,
dob DATE,
balance NUMBER);

PROCEDURE UpdateCustomer(
id NUMBER,
newBalance NUMBER);

FUNCTION GetBalance(
id NUMBER)
RETURN NUMBER;

END CustomerManagement;
/CREATE OR REPLACE PACKAGE BODY CustomerManagement IS

PROCEDURE AddCustomer(
id NUMBER,
name VARCHAR2,
dob DATE,
balance NUMBER)
IS
BEGIN
INSERT INTO Customers
VALUES(id,name,dob,balance,SYSDATE);
END;

PROCEDURE UpdateCustomer(
id NUMBER,
newBalance NUMBER)
IS
BEGIN
UPDATE Customers
SET Balance=newBalance
WHERE CustomerID=id;
END;

FUNCTION GetBalance(
id NUMBER)
RETURN NUMBER
IS
b NUMBER;
BEGIN
SELECT Balance
INTO b
FROM Customers
WHERE CustomerID=id;

RETURN b;
END;

END CustomerManagement;
/