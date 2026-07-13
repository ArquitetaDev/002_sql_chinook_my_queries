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
    CONCAT(Customer.FirstName, ' ', Customer.LastName), 
    FORMAT(Invoice.InvoiceDate, 'dd-MM-yyyy'), 
    Invoice.Total
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Invoice.Total < 5.00
ORDER BY Customer.FirstName, Invoice.InvoiceDate DESC;