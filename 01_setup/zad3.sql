
CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    adres VARCHAR(100),
    telefon VARCHAR(15)
);

CREATE TABLE ksiegowosc.godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin INT CHECK (liczba_godzin >= 0),
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika)
);

CREATE TABLE ksiegowosc.pensja (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(50),
    kwota NUMERIC(10,2) CHECK (kwota >= 0)
);

CREATE TABLE ksiegowosc.premia (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(50),
    kwota NUMERIC(10,2) CHECK (kwota >= 0)
);

CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika),
    id_godziny INT REFERENCES ksiegowosc.godziny(id_godziny),
    id_pensji INT REFERENCES ksiegowosc.pensja(id_pensji),
    id_premii INT REFERENCES ksiegowosc.premia(id_premii)
);

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela przechowująca informacje o pracownikach firmy';
COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela przechowująca informacje o godzinach pracy pracowników firmy';
COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela przechowująca informacje o pensji pracowników firmy';
COMMENT ON TABLE ksiegowosc.premia IS 'Tabela przechowująca informacje o premiach pracowników firmy';
COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Tabela przechowująca informacje o wynagrodzeniach pracowników firmy';
