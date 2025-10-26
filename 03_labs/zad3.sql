--3. Zamień obiekt4 na poligon. Jaki warunek musi być spełniony, aby można było wykonać to zadanie? Zapewnij te warunki.

INSERT INTO public.obiekty (nazwa, geom)
SELECT 
    'obiekt4_cl',
    ST_MakePolygon(
    	ST_AddPoint(
        	ST_LineMerge(geom),        
        	ST_StartPoint(ST_LineMerge(geom)))
    )
FROM obiekty 
WHERE nazwa = 'obiekt4';