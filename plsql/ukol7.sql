create sequence seq_lyz_vybaveni increment by 1 start with 100 maxvalue 9999 minvalue 1 nocycle;

create or replace trigger tgg_lyz before
    insert on lyz_vybaveni
    for each row
declare begin
    select
        seq_lyz_vybaveni.nextval
        || lpad(:new.id_vystroje, 4, '0')
    into :new.id_vystroje
    from
        dual;

end;