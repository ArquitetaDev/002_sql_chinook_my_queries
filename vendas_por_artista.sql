/*
OBJETIVO: Obter valores totais de vendas por artista, apenas os maiores que 25.

LÓGICA: 
- Mostrar colunas: NomeArtista, TotalVendas.
- Tabelas: Artist.Name, 
- Para obter total vendas: 
    Agrupar por artista e então somar cada Track vendida, quantidade e preço SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice)
    Unir tabelas para linkar Track com o artista:  
        InvoiceLine.TrackId = Track.TrackId (pega AlbumId)
        Track.AlbumId = Album.AlbumId (pega ArtistId)
        Album.ArtistId = Artist.Name (pega nome artista)
- Filtrar mostrando apenas os totais maiores que 25.
*/


