SELECT SUM(pe.kwota + pr.kwota) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii;
