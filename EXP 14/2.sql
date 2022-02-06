

-- CREATE TABLE Department(dept_name VARCHAR(20),building VARCHAR (50),budget INT,PRIMARY KEY (dept_name));

-- CREATE TABLE Instructor(ID int,name VARCHAR(20),dept_name VARCHAR(20),salary int,PRIMARY KEY (ID),FOREIGN KEY (dept_name) REFERENCES Department(dept_name));

-- INSERT INTO Department VALUES('Biology','Watson',90000);
-- INSERT INTO Department VALUES('Comp.Sci','Taylor',100000);
-- INSERT INTO Department VALUES('Elec.Eng','Taylor',85000);
-- INSERT INTO Department VALUES('Finance','Painter',120000);
-- INSERT INTO Department VALUES('History','Painter',50000);
-- INSERT INTO Department VALUES('Music','Packard',80000);
-- INSERT INTO Department VALUES('Physics','Watson',70000);


-- INSERT INTO Instructor VALUES(10101,'Srinivasan','Comp.Sci',65000);
-- INSERT INTO Instructor VALUES(12121,'Wu','Finance',90000);


-- CREATE TABLE STATUS
-- (
--     new integer,
--     old integer,
--     primary key (new, old)
-- );
-- /

CREATE OR REPLACE TRIGGER NEW_OLD_SAL
    BEFORE UPDATE OF SALARY
    on INSTRUCTOR
    FOR EACH ROW
DECLARE
BEGIN
    INSERT INTO STATUS VALUES (:NEW.SALARY, :OLD.SALARY);
    DBMS_OUTPUT.PUT_LINE('SAL DIFF = ' || abs(:OLD.SALARY - :NEW.SALARY));
END;

-- UPDATE INSTRUCTOR
-- SET SALARY = SALARY * 1.1
-- WHERE NAME = 'Srinivasan';
-- /



-- select * from STATUS;
