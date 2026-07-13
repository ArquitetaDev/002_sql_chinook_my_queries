/*
OBJETIVO: Obter valores totais em compras por cliente (os gastaram mais de US$40).

LÓGICA:
- Mostrar colunas: NomesCliente, TotalFatura.
- Filtrar incluindo só clientes que gastaram mais que 40.
*/

SELECT  CONCAT(c.FirstName, ' ', c.LastName) AS NomeCliente,
        SUM(i.Total) AS TotalFatura
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
HAVING SUM(i.Total) > 40 
ORDER BY TotalFatura DESC;