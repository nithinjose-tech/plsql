

declare
    r number;
    a number;
    b number;
    h number;
    a1 number;
    b1 number;
    c1 number;
    r1 number;
    h1 number;

begin
    dbms_output.put_line('All Units in cm2');
    
    r := 2;
    area.area_circle(r,a);
    dbms_output.put_line('Area of Circle of Radius ' || r || ' is: ' || a || ' cm2');
    
    b := 3;
    h := 4;
    area.area_right_angled(b,h,a);
    dbms_output.put_line('Area of Right Angled Triangle of Base ' || b || ' and height ' || h || ' is: ' || a|| ' cm2');
    
    a1 := 3;
    b1 := 4;
    c1 := 5;
    a := area.area_triangle(a1,b1,c1);
    dbms_output.put_line('Area of Triangle with Sides ' || a1 || ', ' || b1 || ', ' || c1 || ' is: ' || ROUND(a,2) || ' cm2');
    
    r1 := 8;
    h1 := 9;
    a := area.volume(r1,h1);
    dbms_output.put_line('Volume of Cylinder with Radius ' || r1 || ' and height ' || h1 || ' is: ' || a || ' cm2');
end;
/
