-- Wariant SQLite
CREATE TABLE kategorie (
   id_kategorii INTEGER PRIMARY KEY AUTOINCREMENT,
   nazwa TEXT NOT NULL
);

CREATE TABLE klienci (
   id_klienta INTEGER PRIMARY KEY AUTOINCREMENT,
   imie TEXT NOT NULL,
   nazwisko TEXT NOT NULL,
   email TEXT UNIQUE NOT NULL,
   telefon TEXT,
   ulica TEXT,
   miasto TEXT,
   kod_pocztowy TEXT
);

CREATE TABLE produkty (
   id_produktu INTEGER PRIMARY KEY AUTOINCREMENT,
   id_kategorii INTEGER NOT NULL,
   nazwa TEXT NOT NULL,
   cena_bazowa FLOAT NOT NULL,
   FOREIGN KEY (id_kategorii) REFERENCES kategorie(id_kategorii)
);

CREATE TABLE zamowienia (
   id_zamowienia INTEGER PRIMARY KEY AUTOINCREMENT,
   id_klienta INTEGER NOT NULL,
   data_zlozenia TEXT NOT NULL,
   status TEXT NOT NULL,
   FOREIGN KEY (id_klienta) REFERENCES klienci(id_klienta)
);

CREATE TABLE szczegoly_zamowienia (
   id_zamowienia INTEGER NOT NULL,
   id_produktu INTEGER NOT NULL,
   ilosc INTEGER NOT NULL CHECK (ilosc > 0),
   cena_historyczna FLOAT NOT NULL,
   PRIMARY KEY (id_zamowienia, id_produktu),
   FOREIGN KEY (id_zamowienia) REFERENCES zamowienia(id_zamowienia),
   FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu)
);
