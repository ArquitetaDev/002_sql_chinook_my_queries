-- SQLite
-- OBJETIVO: Obter a duração de cada faixa em minutos, 2 casas decimais.

SELECT Name, CAST(Milliseconds/60000.00 AS DECIMAL(10,2)) AS Minutos
FROM Track;