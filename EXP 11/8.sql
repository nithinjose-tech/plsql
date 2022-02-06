
-- create table Customer(cid int,emi int);
-- insert into Customer values(1,1200);



declare
    input_cid number:=1;
    row_no number;
    emi number;
    customer_info Customer%rowtype;
begin
    select count(*)
    into row_no
    from Customer
    where cid=input_cid;
    if (row_no=1) then
        update Customer set emi=emi/2 where cid=input_cid;
        select * into customer_info from Customer where cid=input_cid;
        dbms_output.put_line('Updated emi: '||customer_info.emi);
    else
        dbms_output.put_line('Customer of cid '||input_cid||' not found');
    end if;
    
end;


/

