DECLARE

CURSOR c1 IS
SELECT LoanID,InterestRate
FROM Loans;

BEGIN

FOR rec IN c1
LOOP

UPDATE Loans
SET InterestRate=InterestRate+0.5
WHERE LoanID=rec.LoanID;

END LOOP;

COMMIT;

END;
/