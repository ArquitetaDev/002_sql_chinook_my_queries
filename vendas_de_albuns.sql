/*
EXERCICIO:

Você deseja gerar um relatório mostrando os títulos dos álbuns de cada artista e o total de vendas. A consulta precisa ser clara e eficiente:

Entenda o objetivo final: defina o que você deseja ver — nomes de artistas, títulos de álbuns e totais de vendas.

Selecione suas tabelas: utilize Artist, Album, InvoiceLine, Track e Genre.

Aplique transformações: use agregação para calcular o total de vendas.

Use aliases para maior clareza: simplifique os cabeçalhos das colunas e as referências às tabelas.
*/

/*
OBJETIVO: Gerar relatório de vendas totais de cada álbum, os mais vendidos primeiro.

LÓGICA:
- Mostrar colunas: Artist.Name, Album.Title, COUNT InvoiceLine.TrackId, soma das vendas por álbum.
- InvoiceLine.TrackId = Track.TrackId, Track.AlbumId = Album.AlbumId para pegar nome album
- Filtrar excluindo o que não é música.
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
ORDER BY ValorVendas DESC;