create or replace procedure lyzarna_info as
    v_pocet_lyzi number;
begin
    select
        count(*)
    into v_pocet_lyzi
    from
        lyz_vybaveni;

    dbms_output.put_line('Ke dni '
                         || systdate
                         || ' je v databazi '
                         || v_pocet_lyzi
                         || ' paru lyzi');

end;

create or replace procedure kvalita_vybaveni (
    ktere in vypujcka_lyz.id_vystroje%type
) as
    v_nazev lyz_vybaveni.nazev%type;
    v_pocet number;
begin
    select
        nazev,
        count(*)
    into
        v_nazev,
        v_pocet
    from
             vypujcka_lyz
        natural join lyz_vybaveni
    group by
        nazev
    where
        ktere = id_vystroje;

    if pocet <= 1 then
        dbms_output.put_line(v_nazev || ' – nové');
    elsif pocet <= 4 then
        dbms_output.put_line(v_nazev || ' – zachovalé');
    else
        dbms_output.put_line(v_nazev || ' – opotřebené');
    end if;

end;