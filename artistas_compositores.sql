-- Descobrir IDs dos gêneros Clássico e Eletrônico (independentemente de acentos ou idioma).

SELECT * FROM Genre
WHERE Name LIKE '%ssic%' OR Name LIKE '_le%' ;



-- Listar nomes dos compositores, das músicas e preços da tabela Track,
-- cujos gêneros são 24-Clássico ou 15-Eletrônico,
-- cujos preços são menores que 1.99,
-- sem valores nulos para compositores,
-- em ordem crescente de nomes de músicas, primeiro as clássicas, depois as eletrônicas.

SELECT Composer, Name, UnitPrice 
FROM Track
WHERE (GenreId = 24 OR GenreId = 15)
  AND UnitPrice < 1.99 
  AND Composer IS NOT NULL 
ORDER BY GenreId DESC, Composer ASC;