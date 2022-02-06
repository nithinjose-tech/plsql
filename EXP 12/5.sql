-- drop table staf;
-- create table staf(id integer,salary integer);
-- insert into staf (id,salary) values (1,1000)

DECLARE
    staff_id INTEGER;
    n        INTEGER;
    salary   INTEGER;

    PROCEDURE dlt_staff(staff_id IN INTEGER, n IN INTEGER) IS
    BEGIN
        IF
            (n = 1)
        THEN
            DELETE
            FROM staf
            WHERE id = staff_id;
            DBMS_OUTPUT.put_line('Staff with staff_id ' || staff_id || ' deleted successfully!');
        ELSE
            DBMS_OUTPUT.put_line('Record Matching Id ' || staff_id || ' Absent');
        END IF;
    END;

BEGIN
    staff_id := 4;
    SELECT COUNT(*)
    INTO n
    FROM staf
    WHERE id = staff_id;
    dlt_staff
        (staff_id, n);
END;
/

select * from staff;

-- Enter value for staff_id: 1
-- old  21:     staff_id := &staff_id;
-- new  21:     staff_id := 1;
-- Staff with staff_id 1 deleted successfully!
