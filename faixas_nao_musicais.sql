/*
OBJETIVO: Descobrir nomes das faixas de Drama, Sci Fi & Fantasy, Comedy, Science Fiction.

LÓGICA:
- Mostrar colunas: Gênero, Nome da Faixa. 
- Unir tabelas Genre e Track para pegar os nomes da faixas.
- Filtrar pelos gêneros especificados no objetivo.
- Ordenar por gênero.
*/

SELECT g.Name, t.Name   
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
WHERE 
    g.Name = 'Drama' OR    
    g.Name = 'Sci Fi & Fantasy' OR
    g.Name = 'Comedy' OR
    g.Name = 'Science Fiction'
ORDER BY g.Name;