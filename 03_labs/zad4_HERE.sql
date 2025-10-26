--4. Stwórz tabelę o nazwie ‘input_points’ i dodaj do niej dwa rekordy o geometrii punktowej.
--Użyj następujących współrzędnych:
--X Y
--8.36093 49.03174
--8.39876 49.00644
CREATE TABLE input_points (
    id SERIAL PRIMARY KEY,
    geom geometry(Point, 4326)
);


INSERT INTO input_points (geom)
VALUES
(ST_SetSRID(ST_MakePoint(8.36093, 49.03174), 4326)),
(ST_SetSRID(ST_MakePoint(8.39876, 49.00644), 4326));
