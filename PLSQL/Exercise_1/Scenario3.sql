SET SERVEROUTPUT ON;

BEGIN
    FOR rec IN (
        SELECT c.Name, l.LoanID, l.EndDate
        FROM Customers c
        JOIN Loans l
        ON c.CustomerID=l.CustomerID
        WHERE l.EndDate BETWEEN SYSDATE AND SYSDATE+30
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
        'Reminder: '||rec.Name||
        ' Loan ID: '||rec.LoanID||
        ' Due Date: '||rec.EndDate);
    END LOOP;
END;
/