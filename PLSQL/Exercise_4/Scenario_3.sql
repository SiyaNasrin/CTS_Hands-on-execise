CREATE OR REPLACE FUNCTION HasSufficientBalance(
    p_AccountID NUMBER,
    p_Amount NUMBER
)
RETURN BOOLEAN
IS
    v_Balance NUMBER;
BEGIN
    SELECT Balance
    INTO v_Balance
    FROM Accounts
    WHERE AccountID=p_AccountID;

    RETURN v_Balance>=p_Amount;
END;
/