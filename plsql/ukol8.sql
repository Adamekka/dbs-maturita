create or replace trigger tgg_vyp before
    insert on vypujcka_lyz
    for each row
declare begin
    :new.datum_vypujceni := sysdate;
    update lyz_vybaveni
    set
        vypujceno = 1
    where
        id_vystroje = :new.id_vystroje;

end;