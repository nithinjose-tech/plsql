-- drop table test;
-- create table test (id int,sums int);

DECLARE
    x    NUMBER;
    n    NUMBER;
    i    NUMBER;
    sums NUMBER;

    FUNCTION findsum(i NUMBER)
        RETURN NUMBER IS
        SUM NUMBER;
    BEGIN
        sums := ((i * (i + 1)) / 2);
        RETURN sums;
    END;

BEGIN
    n := 4;
    FOR i IN 1..n
        LOOP
            sums := findsum(i);
            INSERT INTO test VALUES (i, sums);
            dbms_output.put_line(i || ' ' || sums);
        END LOOP;
END;
/


