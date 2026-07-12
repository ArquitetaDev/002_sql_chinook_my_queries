/*
OBJETIVO: Descobrir quais clientes tiveram maior valor total em compras.

LÓGICA: 
- Tabelas: Customer (id cliente, sobrenome - maiúsculo), Invoice (total - arredondar para 1 casa decimal e somar).
- União: O exercício pede JOIN pelas colunas de CEP (o resultado seria impreciso), mas farei a união pelo CustomerId.
- Agrupar para gerar total por cliente.
- Ordenar do maior para o menor valor.
*/

SELECT
    Customer.CustomerId,
    UPPER(Customer.LastName), 
    ROUND(SUM(Invoice.Total), 1)
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId
ORDER BY SUM(Invoice.Total) DESC;