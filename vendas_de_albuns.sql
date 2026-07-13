/*
OBJETIVO: Gerar relatório de vendas totais de cada álbum, os mais vendidos primeiro.

LÓGICA:
- Mostrar colunas: Nome Artista, Nome Album, Número de Vendas de Faixas por Álbum, Valor de Vendas por Álbum.
- Unir tabelas: Invoice, Track e Album para pegar o Nome Álbum,
                Artista para pegar o Nome Artista,
                GenreId para poder filtrar o gênero.
- Filtrar por gênero excluindo o que não é música.
- Agrupar valores de vendas por Álbum.
- Filtrar só os maiores de 15. 
- Ordenar valores maiores de vendas primeiro.
*/

SELECT 
    ar.Name AS Artista, 
    ab.Title AS Álbum, 
    COUNT(i.TrackId) AS QtdVendas,
    SUM(i.Quantity * i.UnitPrice) AS ValorVendas
FROM InvoiceLine i
JOIN Track t    ON i.TrackId = t.TrackId
JOIN Album ab   ON t.AlbumId = ab.AlbumId
JOIN Artist ar  ON ab.ArtistId = ar.ArtistId
JOIN Genre g    ON t.GenreId = g.GenreId 
WHERE g.Name NOT IN 
('TV Shows', 'Drama', 'Sci Fi & Fantasy', 'Comedy', 'Horror', 'Science Fiction')
GROUP BY ab.Title
HAVING ValorVendas > 15
ORDER BY ValorVendas DESC;