CREATE OR REPLACE PROCEDURE TransferFunds(
    p_From NUMBER,
    p_To NUMBER,
    p_Amount NUMBER
)
IS
    v_Balance NUMBER;
BEGIN
    SELECT Balance
    INTO v_Balance
    FROM Accounts
    WHERE AccountID=p_From;

    IF v_Balance>=p_Amount THEN

        UPDATE Accounts
        SET Balance=Balance-p_Amount
        WHERE AccountID=p_From;

        UPDATE Accounts
        SET Balance=Balance+p_Amount
        WHERE AccountID=p_To;

        COMMIT;

    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');
    END IF;
END;
/