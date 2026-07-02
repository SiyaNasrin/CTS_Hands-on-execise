-CREATE OR REPLACE PROCEDURE UpdateSalary(
    p_EmpID NUMBER,
    p_Percentage NUMBER
)
IS
BEGIN
    UPDATE Employees
    SET Salary=Salary+(Salary*p_Percentage/100)
    WHERE EmployeeID=p_EmpID;

    IF SQL%ROWCOUNT=0 THEN
        RAISE NO_DATA_FOUND;
    END IF;

    COMMIT;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/