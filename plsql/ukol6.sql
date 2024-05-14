create or replace trigger tgg_zak after
    update or delete on zakaznici
    for each row
declare begin
    dbms_output.put_line('Data byla zmenena v tabulce zakaznici');
end;