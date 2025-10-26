--SELECT COUNT(*) FROM public.buildings_2018;
--SELECT COUNT(*) FROM public.buildings_2019; -- sprawdzenie czy dobrze wczytało dane

--1. Znajdź budynki, które zostały wybudowane lub wyremontowane na przestrzeni roku (zmiana
--pomiędzy 2018 a 2019).

--nowe + zmienione budynki 
SELECT DISTINCT b19.*
FROM buildings_2019 b19
LEFT JOIN buildings_2018 b18
    ON b19.polygon_id = b18.polygon_id
WHERE b18.polygon_id IS NULL
   OR NOT ST_Equals(b19.geom, b18.geom);




