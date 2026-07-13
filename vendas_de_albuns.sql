/*
EXERCICIO:

Você deseja gerar um relatório mostrando os títulos dos álbuns de cada artista e o total de vendas. A consulta precisa ser clara e eficiente:

Entenda o objetivo final: defina o que você deseja ver — nomes de artistas, títulos de álbuns e totais de vendas.

Selecione suas tabelas: utilize Artist, Album, InvoiceLine, Track e Genre.

Aplique transformações: use agregação para calcular o total de vendas.

Use aliases para maior clareza: simplifique os cabeçalhos das colunas e as referências às tabelas.
*/

/*
OBJETIVO: Gerar relatório de vendas totais de cada álbum, agrupados por artista.

LÓGICA:
- Mostrar colunas: Artist.Name, Album.Title, COUNT InvoiceLine.TrackId
- InvoiceLine.TrackId = Track.TrackId, Track.AlbumId = Album.AlbumId para pegar nome album
*/

SELECT 
    ar.Name AS Artista, 
    ab.Title AS Álbum, 
    COUNT(i.TrackId) AS 'Qtd Faixas Vendidas',
    ((COUNT(i.TrackId)) * i.Quantity * i.UnitPrice) AS 'Valor Total de Vendas'
FROM InvoiceLine i
LEFT JOIN Track t   ON i.TrackId = t.TrackId
JOIN Album ab       ON t.AlbumId = ab.AlbumId
JOIN Artist ar      ON ab.ArtistId = ar.ArtistId
GROUP BY ab.Title
ORDER BY COUNT(i.TrackId) DESC;
