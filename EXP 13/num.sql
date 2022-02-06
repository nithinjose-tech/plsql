declare
    n   number := 5;
    m   number := 4;
    o   number := 8;
    p   number := 11;
    out number;
    st  boolean;

begin
    dbms_output.put_line('--------------------------');
    out := custom.fact(n);
    dbms_output.put_line('Factorial of ' || n || '!= ' || out);
    out := custom.square(m);
    dbms_output.put_line('Square of ' || m || ' = ' || out);
    out := custom.fibo(o);
    dbms_output.put_line(o || 'th fibonacci number = ' || out);
    st := custom.isPrime(p);
    if (st) then
        dbms_output.put_line(p || ' is Prime');
    else
        dbms_output.put_line(p || ' is not Prime');
    end if;
end;
/
