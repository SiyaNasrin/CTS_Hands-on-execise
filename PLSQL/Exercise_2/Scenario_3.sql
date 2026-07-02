CREATE OR REPLACE PROCEDURE AddNewCustomer(
    p_ID NUMBER,
    p_Name VARCHAR2,
    p_DOB DATE,
    p_Balance NUMBER
)
IS
BEGIN
    INSERT INTO Customers
    VALUES(p_ID,p_Name,p_DOB,p_Balance,SYSDATE);

    COMMIT;

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Customer ID already exists.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/