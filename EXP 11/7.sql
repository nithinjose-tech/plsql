
-- create table evaluation(num int primary key,square int,cube int);


declare
    lim number:=10;
begin
    for i in 1..lim loop
        insert into evaluation values(i,power(i,2),power(i,3));
    end loop;
end;
/
select * from evaluation;
