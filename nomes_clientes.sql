-- Listar todos os primeiros e últimos nomes de todos os clientes da tabela Customer que moram em São Paulo, em ordem alfabética.
SELECT FirstName, LastName
FROM Customer
WHERE City = 'São Paulo'
ORDER BY FirstName ASC;