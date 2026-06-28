-- Wariant PostgreSQL
CREATE TABLE kategorie (
   id_kategorii SERIAL PRIMARY KEY,
   nazwa VARCHAR(100) NOT NULL
);

CREATE TABLE klienci (
   id_klienta SERIAL PRIMARY KEY,
   imie VARCHAR(50) NOT NULL,
   nazwisko VARCHAR(50) NOT NULL,
   email VARCHAR(255) UNIQUE NOT NULL,
   telefon VARCHAR(15),
   ulica VARCHAR(255),
   miasto VARCHAR(50),
   kod_pocztowy VARCHAR(15)
);

CREATE TABLE produkty (
   id_produktu SERIAL PRIMARY KEY,
   id_kategorii INTEGER NOT NULL,
   nazwa VARCHAR(255) NOT NULL,
   cena_bazowa NUMERIC(10,2) NOT NULL,
   CONSTRAINT fk_kategoria
      FOREIGN KEY (id_kategorii) REFERENCES kategorie(id_kategorii)
);

CREATE TABLE zamowienia (
   id_zamowienia SERIAL PRIMARY KEY,
   id_klienta INTEGER NOT NULL,
   data_zlozenia TIMESTAMP NOT NULL,
   status VARCHAR(50) NOT NULL,
   CONSTRAINT fk_klient
      FOREIGN KEY (id_klienta) REFERENCES klienci(id_klienta)
);

CREATE TABLE szczegoly_zamowienia (
   id_zamowienia INTEGER NOT NULL,
   id_produktu INTEGER NOT NULL,
   ilosc SMALLINT NOT NULL CHECK (ilosc > 0),
   cena_historyczna NUMERIC(10,2) NOT NULL,
   PRIMARY KEY (id_zamowienia, id_produktu),
   CONSTRAINT fk_zamowienie
      FOREIGN KEY (id_zamowienia) REFERENCES zamowienia(id_zamowienia),
   CONSTRAINT fk_produkt
      FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu)
);
