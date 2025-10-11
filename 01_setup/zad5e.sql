SELECT imie, nazwisko
FROM ksiegowosc.pracownicy
WHERE nazwisko ILIKE '%n%' AND imie LIKE '%a';
