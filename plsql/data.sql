insert into adresar (
    id_adresa,
    ulice_cp,
    mesto,
    psc
) values (
    0,
    'Nadrazni 23',
    'Novy Jicin',
    '74101'
);

insert into adresar (
    id_adresa,
    ulice_cp,
    mesto,
    psc
) values (
    1,
    'Mestka 23',
    'Koprivnice',
    '74100'
);

insert into adresar (
    id_adresa,
    ulice_cp,
    mesto,
    psc
) values (
    2,
    'Prazska 14',
    'Praha',
    '11000'
);

-- zakaznici
insert into zakaznici (
    id_zakaznik,
    titul,
    jmeno,
    prijmeni,
    datum_nar,
    rod_cislo,
    adresar_id_adresa,
    vzdelani
) values (
    0,
    'Ing.',
    'Jan',
    'Novak',
    to_date('1980-01-01', 'YYYY-MM-DD'),
    '12345678901',
    1,
    'V'
);

insert into zakaznici (
    id_zakaznik,
    titul,
    jmeno,
    prijmeni,
    datum_nar,
    rod_cislo,
    adresar_id_adresa,
    vzdelani
) values (
    1,
    null,
    'James',
    'Brown',
    to_date('2001-01-01', 'YYYY-MM-DD'),
    '42345678901',
    0,
    'S'
);

insert into zakaznici (
    id_zakaznik,
    titul,
    jmeno,
    prijmeni,
    datum_nar,
    rod_cislo,
    adresar_id_adresa,
    vzdelani
) values (
    2,
    'Mgr.',
    'Jane',
    'Hugh',
    to_date('1989-01-01', 'YYYY-MM-DD'),
    '92345678901',
    2,
    'V'
);

insert into zakaznici (
    id_zakaznik,
    titul,
    jmeno,
    prijmeni,
    datum_nar,
    rod_cislo,
    adresar_id_adresa,
    vzdelani
) values (
    3,
    null,
    'Jimmy',
    'Beast',
    to_date('1982-01-01', 'YYYY-MM-DD'),
    '92345678901',
    2,
    'Z'
);

insert into zakaznici (
    id_zakaznik,
    titul,
    jmeno,
    prijmeni,
    datum_nar,
    rod_cislo,
    adresar_id_adresa,
    vzdelani
) values (
    4,
    'Ing.',
    'Linus',
    'Torvalds',
    to_date('1987-04-01', 'YYYY-MM-DD'),
    '92345678901',
    2,
    'V'
);

insert into zakaznici (
    id_zakaznik,
    titul,
    jmeno,
    prijmeni,
    datum_nar,
    rod_cislo,
    adresar_id_adresa,
    vzdelani
) values (
    5,
    'Ing.',
    'Richard',
    'Blue',
    to_date('2000-04-01', 'YYYY-MM-DD'),
    '69345678901',
    1,
    'V'
);

-- lyz_vybaveni
insert into lyz_vybaveni (
    id_vystroje,
    nazev,
    popis,
    nakup_cena,
    cena_vystroj_den,
    vypujceno
) values (
    0,
    'Blizzard Extreme 2000',
    'Hodně super závodní lyže',
    1980,
    120,
    0
);

insert into lyz_vybaveni (
    id_vystroje,
    nazev,
    popis,
    nakup_cena,
    cena_vystroj_den,
    vypujceno
) values (
    1,
    'Atomic skiing X',
    'Lyže pro rekreační lyžování',
    1200,
    80,
    0
);

insert into lyz_vybaveni (
    id_vystroje,
    nazev,
    popis,
    nakup_cena,
    cena_vystroj_den,
    vypujceno
) values (
    2,
    'Wedze SpeedX',
    'Rychlé rekreační lyže',
    900,
    50,
    0
);

insert into lyz_vybaveni (
    id_vystroje,
    nazev,
    popis,
    nakup_cena,
    cena_vystroj_den,
    vypujceno
) values (
    3,
    'Wedze FreeStyle2X',
    'Super freestyle lyže',
    1000,
    70,
    0
);

insert into lyz_vybaveni (
    id_vystroje,
    nazev,
    popis,
    nakup_cena,
    cena_vystroj_den,
    vypujceno
) values (
    4,
    'Kastle speedrun 23',
    'České rychlé závodní lyže',
    1000,
    70,
    0
);

insert into lyz_vybaveni (
    id_vystroje,
    nazev,
    popis,
    nakup_cena,
    cena_vystroj_den,
    vypujceno
) values (
    5,
    'Blizzard SpaceX 333',
    'Nejlepší lyže na planetě',
    8000,
    700,
    0
);

-- vypujcka_lyz
insert into vypujcka_lyz (
    id_zakaznik,
    id_vystroje,
    datum_vypujceni,
    datum_vraceni
) values (
    0,
    0,
    to_date('01.01.2024', 'DD.MM.YYYY'),
    to_date('05.01.2024', 'DD.MM.YYYY')
);

insert into vypujcka_lyz (
    id_zakaznik,
    id_vystroje,
    datum_vypujceni,
    datum_vraceni
) values (
    1,
    1,
    to_date('06.01.2024', 'DD.MM.YYYY'),
    to_date('09.01.2024', 'DD.MM.YYYY')
);

insert into vypujcka_lyz (
    id_zakaznik,
    id_vystroje,
    datum_vypujceni,
    datum_vraceni
) values (
    2,
    2,
    to_date('01.01.2024', 'DD.MM.YYYY'),
    to_date('09.01.2024', 'DD.MM.YYYY')
);

insert into vypujcka_lyz (
    id_zakaznik,
    id_vystroje,
    datum_vypujceni,
    datum_vraceni
) values (
    3,
    3,
    to_date('05.02.2024', 'DD.MM.YYYY'),
    to_date('22.02.2024', 'DD.MM.YYYY')
);

insert into vypujcka_lyz (
    id_zakaznik,
    id_vystroje,
    datum_vypujceni,
    datum_vraceni
) values (
    4,
    0,
    to_date('01.02.2024', 'DD.MM.YYYY'),
    to_date('08.02.2024', 'DD.MM.YYYY')
);

insert into vypujcka_lyz (
    id_zakaznik,
    id_vystroje,
    datum_vypujceni,
    datum_vraceni
) values (
    5,
    4,
    to_date('01.03.2024', 'DD.MM.YYYY'),
    to_date('02.03.2024', 'DD.MM.YYYY')
);

insert into vypujcka_lyz (
    id_zakaznik,
    id_vystroje,
    datum_vypujceni,
    datum_vraceni
) values (
    6,
    4,
    to_date('10.03.2024', 'DD.MM.YYYY'),
    to_date('14.03.2024', 'DD.MM.YYYY')
);

insert into vypujcka_lyz (
    id_zakaznik,
    id_vystroje,
    datum_vypujceni,
    datum_vraceni
) values (
    7,
    4,
    to_date('10.03.2024', 'DD.MM.YYYY'),
    null
);