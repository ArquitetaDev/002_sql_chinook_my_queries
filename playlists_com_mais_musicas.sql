-- SQLite
-- OBJETIVO: Ordenar playlists de acordo com suas quantidades de músicas (DESC).

SELECT 
    Playlist.Name AS PlaylistName, 
    COUNT(PlaylistTrack.TrackID) AS TrackCount
FROM PlaylistTrack
JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.Name
ORDER BY TrackCount DESC;
