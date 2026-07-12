/*
  OBJETIVO: Descobrir IDs dos gêneros Clássico e Eletrônico.

  LÓGICA:
    - Identificar tabela de origem: 'Genre' (id, gênero).
    - Filtrar por gênero (clássico ou eletrônico) independentemente de acentos ou idioma.  
*/

SELECT * FROM Genre
WHERE Name LIKE '%ssic%' OR Name LIKE '_le%' ;



/*
  OBJETIVO: Listar músicas dos gêneros Clássico e Eletrônico com preço promocional.
  
  LÓGICA:
    - Identificar tabelas de origem: 'Track' (compositor, música, preço) e 'Genre' (gênero musical).
    - Filtrar faixas por gênero (24-Clássico ou 15-Eletrônico) e preço (< 1.99).
    - Limpar dados: descartar faixas sem compositor definido (NULL).
    - Ordenar: agrupar por gênero e nome da faixa.
*/

SELECT 
  Genre.Name, 
  Track.Composer, 
  Track.Name, 
  Track.UnitPrice 
FROM Track
JOIN Genre ON Track.GenreId = Genre.GenreId
WHERE (Track.GenreId = 24 OR Track.GenreId = 15)
  AND Track.UnitPrice < 1.99 
  AND Track.Composer IS NOT NULL 
ORDER BY Track.GenreId DESC, Track.Composer ASC;