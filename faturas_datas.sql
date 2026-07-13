/*
OBJETIVO: Listar clientes com histórico de faturas de baixo valor (< 5.00). 

LÓGICA:
- Identificar tabelas de origem: 
    'Customer' (nome cliente),
    'Invoice' (data fatura - dd-MM-yyyy, valor fatura).
- Unir tabelas (JOIN) para listar só faturas com nome de cliente cadastrado.
- Filtrar por valor da fatura (< 5.00). 
- Ordenar: agrupar por nome do cliente (ASC) e data da fatura (DESC). 
*/

SELECT
    CONCAT(c.FirstName, ' ', c.LastName) AS FullName,
    FORMAT(i.InvoiceDate, 'dd-MM-yyyy'), 
    i.Total
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE i.Total < 5.00
ORDER BY c.FirstName, i.InvoiceDate DESC;