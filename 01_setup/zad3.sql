CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika INT PRIMARY KEY, 
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(100) NOT NULL,
    telefon VARCHAR(15)
);
COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela przechowująca informacje o pracownikach firmy';


CREATE TABLE ksiegowosc.godziny (
    id_godziny INT PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin DECIMAL(5, 2) NOT NULL,
    id_pracownika INT NOT NULL
);
COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela przechowująca informacje o godzinach pracy pracowników firmy';


CREATE TABLE ksiegowosc.pensja (
    id_pensji INT PRIMARY KEY,
    stanowisko VARCHAR(50) NOT NULL,
    kwota DECIMAL(10, 2) NOT NULL
);
COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela przechowująca informacje o pensji pracowników firmy';


CREATE TABLE ksiegowosc.premia (
    id_premii INT PRIMARY KEY,
    rodzaj TEXT NOT NULL,
    kwota DECIMAL(10, 2)
);
COMMENT ON TABLE ksiegowosc.premia IS 'Tabela przechowująca informacje o premiach pracowników firmy';


CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia INT PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT NOT NULL,
    id_godziny INT,
    id_pensji INT,
    id_premii INT
);
COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Tabela przechowująca informacje o wynagrodzeniach pracowników firmy';

ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_premii)
REFERENCES ksiegowosc.premia(id_premii);

ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_pensji)
REFERENCES ksiegowosc.pensja(id_pensji);

ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_pracownika)
REFERENCES ksiegowosc.pracownicy(id_pracownika);

ALTER TABLE ksiegowosc.godziny
ADD FOREIGN KEY (id_pracownika)
REFERENCES ksiegowosc.pracownicy(id_pracownika);
