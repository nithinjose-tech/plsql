declare
    lim number:=10;
begin
    for i in 1..lim loop
        if (mod(i,2)=0) then
           insert into Result values(i,'Even');
        else
           insert into Result values(i,'Odd');
        end if;
    end loop;
end;
/
select * from Result;
