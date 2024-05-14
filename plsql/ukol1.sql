alter table lyz_vybaveni add (
    datum_nakupu date default sysdate
);

alter table zakaznici add (
    vzdelani char(1) check ( vzdelani in ( 'Z', 'S', 'V' ) )
);