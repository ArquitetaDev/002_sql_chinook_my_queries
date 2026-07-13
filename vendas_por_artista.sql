/*
OBJETIVO: Obter valores totais de vendas por artista, apenas os maiores que 25.

LÓGICA: 
- Mostrar colunas: NomeArtista, TotalVendas.
- Tabelas: Artist.Name, 
- Para obter total vendas: 
    Unir tabelas para linkar Track com o artista:
        Artist.ArtistId = Album.ArtistId (pega Id do artista) 
        Album.AlbumId = Track.AlbumId (pega Id do album do artista) 
        InvoiceLine.TrackId = Track.TrackId (pega Id da track do artista)
- Agrupar por artista e então somar cada Track vendida, quantidade e preço SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice)
- Filtrar mostrando apenas os totais maiores que 25.
*/

SELECT  ar.Name AS NomeArtista, 
        ROUND(SUM(i.Quantity * i.UnitPrice),2) AS TotalVendas
FROM    Artist ar
JOIN    Album al        ON ar.ArtistId = al.ArtistId 
JOIN    Track t         ON al.AlbumId = t.AlbumId
JOIN    InvoiceLine i   ON t.TrackId = i.TrackId 
GROUP BY ar.Name
HAVING  TotalVendas > 25
ORDER BY TotalVendas DESC;