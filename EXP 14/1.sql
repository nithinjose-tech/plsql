 -- CREATE TABLE Department(dept_name VARCHAR(20),building VARCHAR (50),budget INT,PRIMARY KEY (dept_name));
 -- CREATE TABLE Course (course_id varchar(10),title VARCHAR (20),dept_name VARCHAR(20),credits INT,RIMARY KEY (course_id),FOREIGN KEY (dept_name) REFERENCES Department(dept_name));

-- INSERT INTO Department VALUES('Biology','Watson',90000);
-- INSERT INTO Department VALUES('Comp.Sci','Taylor',100000);
--INSERT INTO Department VALUES('Elec.Eng','Taylor',85000);
--INSERT INTO Department VALUES('Finance','Painter',120000);
--INSERT INTO Department VALUES('History','Painter',50000);
--INSERT INTO Department VALUES('Music','Packard',80000);
--INSERT INTO Department VALUES('Physics','Watson',70000);

--INSERT INTO Course VALUES('BIO-101','Intro.to Biology','Biology',4);
--INSERT INTO Course VALUES('BIO-301','Genetics','Biology',4);
--INSERT INTO Course VALUES('BIO-399','Computational Biology','Biology',3);






CREATE OR REPLACE TRIGGER NEW_OLD
    BEFORE UPDATE OF CREDITS
    on COURSE
    FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('OLD VALUE = ' || :OLD.CREDITS);
    DBMS_OUTPUT.PUT_LINE('NEW VALUE = ' || :NEW.CREDITS);
END;
/

-- UPDATE COURSE SET CREDITS = CREDITS + 1 WHERE COURSE_ID = 'BIO-101';
-- /
