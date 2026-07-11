-- Listar todas as datas de faturas e valores totais menores que 5.00, em ordem decrescente de data.

SELECT InvoiceDate, Total
FROM Invoice
WHERE Total < 5.00
ORDER BY InvoiceDate DESC;