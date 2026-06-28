-- import_danych.sql

INSERT INTO kategorie (id_kategorii, nazwa)
VALUES (1, 'Laptopy');

INSERT INTO klienci (
    id_klienta,
    imie,
    nazwisko,
    email,
    telefon,
    ulica,
    miasto,
    kod_pocztowy
)
VALUES (
    4096,
    'Jan',
    'Kowalski',
    'student01@example.com',
    '123456789',
    'Armii Krajowej 78',
    'Walbrzych',
    '58-300'
);

INSERT INTO produkty (
    id_produktu,
    id_kategorii,
    nazwa,
    cena_bazowa
)
VALUES (
    10543,
    1,
    'Laptop ASUS',
    6299.99
);

INSERT INTO zamowienia (
    id_zamowienia,
    id_klienta,
    data_zlozenia,
    status
)
VALUES (
    1,
    4096,
    '2026-05-14 10:15:30',
    'Nowe'
);

INSERT INTO szczegoly_zamowienia (
    id_zamowienia,
    id_produktu,
    ilosc,
    cena_historyczna
)
VALUES (
    1,
    10543,
    1,
    6299.99
);
