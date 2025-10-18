-- 1. Zainstaluj rozszerzenie PostGIS dla bazy danych PostgreSQL (sprawdź, czy najnowsza dostępna wersja oprogramowania wspiera PostGIS).
CREATE EXTENSION postgis;
SELECT PostGIS_full_version(); -- wszystko ok 