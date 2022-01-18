
declare
    input number:=3;
    max_limit number:=10;
begin
    for i in 1..max_limit loop
        dbms_output.put_line(input||' X '||i||' = '||input*i);     
end loop;
    
end;
/
