declare
    cursor vracene_lyze is
    select
        jmeno,
        prijmeni,
        id_vystroje,
        datum_vraceni - datum_vypujceni                        poc_dni,
        cena_vystroj_den * ( datum_vraceni - datum_vypujceni ) cena
    from
             vypujcka_lyz
        natural join zakaznici
        natural join lyz_vybaveni
    where
        datum_vraceni is not null;

begin
    for row in vracene_lyze loop
        dbms_output.put_line(row.jmeno
                             || ' '
                             || row.prijmeni
                             || ' - vypujcka '
                             || row.id_vystroje
                             || ' - '
                             || row.poc_dni
                             || ' dnu - celkova cena vypujcky '
                             || row.cena
                             || ' Kc');
    end loop;
end;

declare
    id_vystroje lyz_vybaveni.id_vystroje%type;
    nazev       lyz_vybaveni.nazev%type;
    pocet       number;
    cursor vypujcky is
    select
        id_vystroje,
        nazev,
        count(id_vystroje) pocet
    from
             vypujcka_lyz
        natural join lyz_vybaveni
    group by
        id_vystroje,
        nazev;

begin
    open vypujcky;
    loop
        fetch vypujcky into
            id_vystroje,
            nazev,
            pocet;
        exit when vypujcky%notfound;
        dbms_output.put_line('Lyze - '
                             || id_vystroje
                             || ' '
                             || nazev
                             || ' byly vypujceny '
                             || pocet
                             || ' krat');

    end loop;

    close vypujcky;
end;