-- 22/02/2024 Seminar 1
-- PL/SQL este similar cu PASCAL

-- partea executabila PL/SQL incepe cu `begin` si se termina cu `end`. 
-- obtional, avem `declare`: variabile, constante, etc.
-- `exception`: pentru error-handling

-- nu sunt stocate:
-- blocul `anonymous`

-- stocate in DB:
-- proceduri, functii, pachete & triggere

-- SET SERVEROUTPUT ON <-- TREBUIE RULAT DOAR O DATA !! !! !! (SQL+)
DECLARE
    VFIRSTNAME VARCHAR(30);
    VLASTNAME  VARCHAR(30);

BEGIN
    -- necesita cel putin un statement, macar `NULL`
    NULL;
    SELECT
        FIRST_NAME, LAST_NAME
    INTO -- `INTO` este necesar in PL\SQL
        VFIRSTNAME, VLASTNAME
    FROM
        EMPLOYEES
    WHERE
        EMPLOYEE_ID = 400;
        
    DBMS_OUTPUT.PUT_LINE(VFIRSTNAME||' '||VLASTNAME);
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN DBMS_OUTPUT.PUT_LINE('THE EMPLOYEE DOESN''T EXIST'); -- DUBLU APOSTROF IN STRING
    
END;
/
-- se pune un `/` pentru separarea blocurilor. doar primul este rulat
