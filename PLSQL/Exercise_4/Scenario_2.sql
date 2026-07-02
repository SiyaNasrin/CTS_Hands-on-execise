CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment(
    p_Loan NUMBER,
    p_Rate NUMBER,
    p_Years NUMBER
)
RETURN NUMBER
IS
    EMI NUMBER;
    r NUMBER;
    n NUMBER;
BEGIN
    r:=p_Rate/(12*100);
    n:=p_Years*12;

    EMI:=p_Loan*r*POWER(1+r,n)/(POWER(1+r,n)-1);

    RETURN ROUND(EMI,2);
END;
/