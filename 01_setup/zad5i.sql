SELECT p.imie, p.nazwisko, pe.kwota
FROM ksiegowosc.pracownicy p
LEFT JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
LEFT JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
ORDER BY pe.kwota;
