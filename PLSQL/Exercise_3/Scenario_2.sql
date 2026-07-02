CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    p_Department VARCHAR2,
    p_Bonus NUMBER
)
IS
BEGIN
    UPDATE Employees
    SET Salary=Salary+(Salary*p_Bonus/100)
    WHERE Department=p_Department;

    COMMIT;
END;
/