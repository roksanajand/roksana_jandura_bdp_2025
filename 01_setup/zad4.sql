INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon)
VALUES
('Jan', 'Nowak', 'Kwiatowa 5', '111111111'),
('Julia', 'Kowalska', 'Lipowa 7', '111222333'),
('Jakub', 'Wiśniewski', 'Słoneczna 10', '222333444'),
('Anna', 'Nowicka', 'Jesienna 12', '333444555'),
('Joanna', 'Wójcik', 'Topolowa 3', '444555666'),
('Piotr', 'Kaczmarek', 'Polna 9', '555666777'),
('Michał', 'Zieliński', 'Różana 4', '666777888'),
('Roksana', 'Jandura', 'Brzozowa 6', '777888999'),
('Monika', 'Kamińska', 'Akacjowa 2', '888999000'),
('Krzysztof', 'Szymański', 'Długa 1', '999000111');

INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika)
VALUES
('2023-10-01', 160, 1),
('2023-10-01', 155, 2),
('2023-10-01', 172, 3),
('2023-10-01', 168, 4),
('2023-10-01', 140, 5),
('2023-10-01', 175, 6),
('2023-10-01', 162, 7),
('2023-10-01', 158, 8),
('2023-10-01', 160, 9),
('2023-10-01', 170, 10);

INSERT INTO ksiegowosc.pensja (stanowisko, kwota)
VALUES
('Kierownik', 9000.00),
('Specjalista', 2500.00),
('Asystent', 1800.00),
('Magazynier', 1200.00),
('Księgowy', 3000.00),
('Kierownik', 7000.00),
('Pracownik biurowy', 2800.00),
('Specjalista', 950.00),
('Praktykant', 800.00),
('Analityk', 3200.00);

INSERT INTO ksiegowosc.premia (rodzaj, kwota)
VALUES
('Premia kwartalna', 1000.00),
('Premia świąteczna', 800.00),
('Premia uznaniowa', 1200.00),
('Premia za nadgodziny', 600.00),
('Premia lojalnościowa', 1500.00),
('Premia roczna', 2000.00),
('Premia projektowa', 1300.00),
('Premia jubileuszowa', 900.00),
('Premia za efektywność', 1100.00),
('Brak premii', 0.00);

INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii)
VALUES
('2023-10-31', 1, 1, 1, 1),
('2023-10-31', 2, 2, 2, 2),
('2023-10-31', 3, 3, 3, 3),
('2023-10-31', 4, 4, 4, 10),
('2023-10-31', 5, 5, 5, 5),
('2023-10-31', 6, 6, 6, 4),
('2023-10-31', 7, 7, 7, 10),
('2023-10-31', 8, 8, 8, 8),
('2023-10-31', 9, 9, 9, 10),
('2023-10-31', 10, 10, 10, 6);
