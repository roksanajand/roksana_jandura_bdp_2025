SELECT pe.stanowisko, COUNT(*) AS liczba_pracownikow
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
GROUP BY pe.stanowisko;
