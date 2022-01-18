declare
    fact integer;
    n integer;
    
begin
  fact := 1;
  n:= 4;
  while(n > 0) loop
    fact := fact * n;
    n := n - 1;
  end loop;
  dbms_output.put_line('Factorial of ' ||fact );
end;
/


