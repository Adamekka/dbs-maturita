-- Zadani

create table adresar (
    id_adresa number(3) primary key,
    ulice_cp  varchar2(30) not null,
    mesto     varchar2(25) not null,
    psc       varchar2(5) not null
);

create table zakaznici (
    id_zakaznik       number(4) primary key,
    titul             varchar2(6),
    jmeno             varchar2(15) not null,
    prijmeni          varchar2(25) not null,
    datum_nar         date not null,
    rod_cislo         varchar2(11) not null,
    adresar_id_adresa number(3)
        references adresar ( id_adresa )
);

create table lyz_vybaveni (
    id_vystroje      number(4) primary key,
    nazev            varchar2(30) not null,
    popis            varchar2(35) not null,
    nakup_cena       number(5) not null,
    cena_vystroj_den number(3) not null,
    vypujceno        char(1)
);

create table vypujcka_lyz (
    id_zakaznik     number(4)
        references zakaznici ( id_zakaznik ),
    id_vystroje     number(4)
        references lyz_vybaveni ( id_vystroje ),
    datum_vypujceni date,
    datum_vraceni   date
);