declare
    A number := 3;
    B number := 4;
    C number := 2;
    D number := B * B - 4 * A * C;

    procedure quad(
      det in number, b in number, a in number
    ) is
    begin
      if det = 0 then
        dbms_output.put_line('x = ' || -b / 2 / a);
    elsif det > 0 then
        dbms_output.put_line('x1 = ' || (-b - sqrt(det)) / 2 / a);
        dbms_output.put_line('x2 = ' || (-b + sqrt(det)) / 2 / a);
    else
        dbms_output.put_line('x1 = (' || -b / 2 / a || ', ' || ROUND(sqrt(-det) / 2 / a,2) || ')');
        dbms_output.put_line('x2 = (' || -b / 2 / a || ', ' || ROUND(-sqrt(-det) / 2 / a,2) || ')');
    end if;
    end;

begin
    if A = 0 then
        dbms_output.put_line('Not a quadratic equation.');
        return;
    end if;
    quad(D,B,A);
end;
/


