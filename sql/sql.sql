-- 1
alter table ctenar modify (
    jmeno varchar2(15)
);

-- 2
update prukazky
set
    titul = 'nema titul'
where
    titul is null;

-- 3
alter table titulym add (
    producent varchar2(20)
);

-- 4
alter table ctenar add (
    pohlavi char(1) check ( pohlavi in ( 'M', 'Z' ) )
);

-- 5
create sequence seq_ctenar increment by 1 start with 6 maxvalue 999;

-- 6
insert into ctenar (
    cislo,
    jmeno,
    prijmeni
) values (
    seq_ctenar.nextval,
    'Josef',
    'Kozel'
);

-- 7
select
    jmeno,
    prijmeni,
    datum
from
         ctenar
    natural join vypujcka
where
    mesto like 'Ostrava';

-- 8
select
    jmeno,
    prijmeni,
    datum_narozeni,
    to_char(sysdate - datum_narozeni, 'YYYY') as stari
from
    prukazky
where
    titul is not null;

-- 9
select
    jmeno,
    prijmeni
from
    prukazky
where
    to_date(datum_narozeni, 'DAY') = to_date(sysdate, 'DAY');

-- 10
select
    jmeno,
    prijmeni,
    decode(substr(rod_cislo, 3, 1),
           0,
           'muz',
           1,
           'muz',
           5,
           'zena',
           6,
           'zena') as pohlavi
from
    prukazky
where
    length(jmeno) < 5;

-- 11
select
    jmeno,
    prijmeni,
    round(avg(pokuta),
          1) as "prumerna pokuta"
from
         prukazky
    natural join archiv
group by
    jmeno,
    prijmeni
having
    avg(pokuta) > 3;

-- 12
select
    nazev,
    autor,
    sum(cena) "celkova cena"
from
         kniha
    natural join exemplar
where
    zeme like 'CZ'
having
    sum(cena) > 100;

-- 13
select
    jmeno,
    prijmeni,
    datum,
    cena
from
         ctenar
    natural join exemplar
    natural join vypujcka
where
    cena between 200 and 500;

-- 14
select
    jmeno,
    prijmeni,
    datum_narozeni
from
    prukazky
where
    datum_narozeni < all (
        select
            datum_narozeni
        from
            prukazky
        where
            titul is null
            and mesto like 'Praha'
    );

-- 15
create table dobri_zakaznici
    as
        select
            jmeno,
            prijmeni,
            count(*) "pocet vypujcek"
        from
                 prukazky
            natural join archiv
            natural join titulym
        group by
            jmeni,
            prijmeni
        having
            count(*) > 15;