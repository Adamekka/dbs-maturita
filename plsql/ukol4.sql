create or replace function f_cena (
    datum_vypujceni in date,
    datum_vraceni   in date,
    cena_za_den     in number
) return number is
begin
    return cena_za_den * ( cena_vraceni - cena_vypujceni );
end;

create or replace view view_cena as
    select
        jmeno,
        prijmeni,
        id_vystroje,
        nazev,
        popis,
        f_cena(datum_vypujceni, datum_vraceni, cena_vystroj_den) cena
    from
             zakaznici
        natural join vypujcka_lyz
        natural join lyz_vybaveni
    order by
        datum_vypujceni;