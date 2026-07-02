CREATE OR REPLACE PACKAGE AccountOperations IS

PROCEDURE OpenAccount(
id NUMBER,
cust NUMBER,
type VARCHAR2,
bal NUMBER);

PROCEDURE CloseAccount(
id NUMBER);

FUNCTION TotalBalance(
cust NUMBER)
RETURN NUMBER;

END;
/
CREATE OR REPLACE PACKAGE BODY AccountOperations IS

PROCEDURE OpenAccount(
id NUMBER,
cust NUMBER,
type VARCHAR2,
bal NUMBER)
IS
BEGIN
INSERT INTO Accounts
VALUES(id,cust,type,bal,SYSDATE);
END;

PROCEDURE CloseAccount(
id NUMBER)
IS
BEGIN
DELETE FROM Accounts
WHERE AccountID=id;
END;

FUNCTION TotalBalance(
cust NUMBER)
RETURN NUMBER
IS
total NUMBER;
BEGIN
SELECT SUM(Balance)
INTO total
FROM Accounts
WHERE CustomerID=cust;

RETURN total;
END;

END;
/