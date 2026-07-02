DECLARE

CURSOR c1 IS
SELECT AccountID
FROM Accounts;

BEGIN

FOR rec IN c1
LOOP

UPDATE Accounts
SET Balance=Balance-100
WHERE AccountID=rec.AccountID;

END LOOP;

COMMIT;

END;
/