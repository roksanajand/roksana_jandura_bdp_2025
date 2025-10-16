SELECT id_pracownika, imie, nazwisko
FROM ksiegowosc.pracownicy
WHERE nazwisko LIKE '%n%' AND imie LIKE '%a';
