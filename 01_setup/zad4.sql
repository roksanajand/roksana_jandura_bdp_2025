INSERT INTO ksiegowosc.pracownicy (id_pracownika, imie, nazwisko, adres, telefon) 
VALUES
(1,'Jan', 'Nowak', 'Kwiatowa 5', '111111111'),
(2,'Julia', 'Kowalska', 'Lipowa 7', '111222333'),
(3,'Jakub', 'Wiśniewski', 'Słoneczna 10', '222333444'),
(4,'Anna', 'Nowicka', 'Jesienna 12', '333444555'),
(5,'Joanna', 'Wójcik', 'Topolowa 3', '444555666'),
(6,'Piotr', 'Kaczmarek', 'Polna 9', '555666777'),
(7,'Michał', 'Zieliński', 'Różana 4', '666777888'),
(8,'Roksana', 'Jandura', 'Brzozowa 6', '777888999'),
(9,'Monika', 'Kamińska', 'Akacjowa 2', '888999000'),
(10,'Krzysztof', 'Szymański', 'Długa 1', '999000111');

INSERT INTO ksiegowosc.godziny (id_godziny, data, liczba_godzin, id_pracownika) VALUES
(100, '2025-11-22', 104, 1),
(101, '2025-11-22', 18, 2),
(102, '2025-11-22', 170, 3),
(103, '2025-11-22', 189, 4),
(104, '2025-11-23', 92, 5),
(105, '2025-11-23', 111, 6),
(106, '2025-11-23', 192, 7),
(107, '2025-11-24', 122, 8),
(108, '2025-11-25', 16, 9),
(109, '2025-11-25', 175, 10);

INSERT INTO ksiegowosc.pensja (id_pensji, stanowisko, kwota)
VALUES
(100000, 'Dyrektor', 20500),
(200000, 'Menager', 8800),
(300000, 'Menager', 2000),
(400000, 'Menager', 800),
(500000, 'Dyrektor marketingu', 1000),
(600000, 'Kierownik', 7000),
(700000, 'Dyrektor działu IT', 3000),
(800000, 'Kierownik', 6800),
(900000, 'Kierownik', 9400),
(1000000, 'Dyrektor ds. obsługi klienta', 8700);

INSERT INTO ksiegowosc.premia (id_premii, rodzaj, kwota)
VALUES
(1000, 'Premia za nadgodziny', 4000),
(1001, 'Premia za stanowisko', 700),
(1002, 'Premia za stanowisko', 1000),
(1003, 'Premia za stanowisko', 800),
(1004, 'Premia za stanowisko', 900),
(1005, 'Premia za stanowisko', 600),
(1006, 'Premia za stanowisko', 800),
(1007, 'Premia za stanowisko', 300),
(1008, 'Premia za stanowisko', 3400),
(1009, 'Premia za stanowisko', NULL);

INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_pensji, id_premii)
VALUES
(10000, '2025-12-01', 1, 100000, 1000),
(10001, '2025-12-01', 2, 200000, 1001),
(10002, '2025-12-01', 3, 300000, 1002),
(10003, '2025-12-01', 4, 400000, 1003),
(10004, '2025-12-01', 5, 500000, 1004),
(10005, '2025-12-01', 6, 600000, 1005),
(10006, '2025-12-01', 7, 700000, NULL),
(10007, '2025-12-01', 8, 700000, 1006),
(10008, '2025-12-01', 9, 800000, 1007),
(10009, '2025-12-01', 10, 900000, 1008);
