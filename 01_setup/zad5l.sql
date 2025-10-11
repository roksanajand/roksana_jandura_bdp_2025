SELECT pe.stanowisko, 
       AVG(pe.kwota) AS srednia,
       MIN(pe.kwota) AS minimalna,
       MAX(pe.kwota) AS maksymalna
FROM ksiegowosc.pensja pe
WHERE LOWER(pe.stanowisko) = 'kierownik'
GROUP BY pe.stanowisko;
