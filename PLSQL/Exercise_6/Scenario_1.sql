SET SERVEROUTPUT ON;

DECLARE

CURSOR c1 IS
SELECT c.Name,
       t.TransactionID,
       t.Amount,
       t.TransactionDate
FROM Customers c
JOIN Accounts a
ON c.CustomerID=a.CustomerID
JOIN Transactions t
ON a.AccountID=t.AccountID
WHERE TO_CHAR(t.TransactionDate,'MMYYYY')
=TO_CHAR(SYSDATE,'MMYYYY');

BEGIN

FOR rec IN c1
LOOP

DBMS_OUTPUT.PUT_LINE(
rec.Name||'  '||
rec.TransactionID||'  '||
rec.Amount);

END LOOP;

END;
/