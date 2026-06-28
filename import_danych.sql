-- import_danych.sql

INSERT INTO kategorie (id_kategorii, nazwa)
VALUES 
    (1, 'Laptopy'),
    (2, 'Smartfony'),
    (3, 'Monitory'),
    (4, 'Akcesoria'),
    (5, 'Drukarki');

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
VALUES 
    (
        4096,
        'Jan',
        'Kowalski',
        'student01@example.com',
        '123456789',
        'Armii Krajowej 78',
        'Walbrzych',
        '58-300'
    ),
    (
        4097,
        'Anna',
        'Nowak',
        'anna.nowak@example.com',
        '987654321',
        'Rynek 12',
        'Wroclaw',
        '50-101'
    ),
    (
        4098,
        'Piotr',
        'Wisniewski',
        'piotr.w@example.com',
        NULL,
        'Polna 4',
        'Poznan',
        '60-123'
    ),
    (
        4099,
        'Maria',
        'Wojcik',
        'm.wojcik@example.com',
        '500600700',
        'Dluga 55',
        'Krakow',
        '30-001'
    ),
    (
        4100,
        'Krzysztof',
        'Kaminski',
        'krzysztof.k@example.com',
        '601202303',
        'Lesna 8',
        'Warszawa',
        '01-234'
    );

INSERT INTO produkty (
    id_produktu,
    id_kategorii,
    nazwa,
    cena_bazowa
)
VALUES 
    (
        10543,
        1,
        'Laptop ASUS',
        6299.99
    ),
    (
        10544,
        2,
        'iPhone 14 Pro',
        5200.00
    ),
    (
        10545,
        3,
        'Monitor Dell',
        1250.50
    ),
    (
        10546,
        4,
        'Mysz Logitech',
        450.00
    ),
    (
        10547,
        5,
        'Drukarka HP',
        850.00
    );

INSERT INTO zamowienia (
    id_zamowienia,
    id_klienta,
    data_zlozenia,
    status
)
VALUES 
    (
        1,
        4096,
        '2026-05-14 10:15:30',
        'Nowe'
    ),
    (
        2,
        4097,
        '2026-05-15 14:20:00',
        'Zrealizowane'
    ),
    (
        3,
        4099,
        '2026-05-16 09:05:15',
        'Wyslane'
    ),
    (
        4,
        4100,
        '2026-05-17 16:45:00',
        'Nowe'
    ),
    (
        5,
        4098,
        '2026-05-19 08:00:00',
        'Zrealizowane'
    );

INSERT INTO szczegoly_zamowienia (
    id_zamowienia,
    id_produktu,
    ilosc,
    cena_historyczna
)
VALUES 
    (
        1,
        10543,
        1,
        6299.99
    ),
    (
        2,
        10544,
        2,
        5200.00
    ),
    (
        3,
        10546,
        1,
        450.00
    ),
    (
        4,
        10545,
        2,
        1250.50
    ),
    (
        5,
        10547,
        3,
        850.00
    );
