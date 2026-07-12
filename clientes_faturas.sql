/*
1º EXERCÍCIO:
OBJETIVO: Testar INNER JOIN com as tabelas Cliente e Fatura.

LÓGICA: 
- Tabelas: Customer (id cliente, sobrenome), Invoice (id fatura).
- União: O exercício pede JOIN pelas colunas de CEP (o resultado será impreciso).
*/

SELECT
    Customer.CustomerId,
    Customer.LastName, 
    Invoice.InvoiceId
FROM Customer
JOIN Invoice ON Customer.PostalCode = Invoice.BillingPostalCode;

-- 384 resultados. nenhum null. o problema do exercicio: joão tem o mesmo cep que Maria 
-- juntando as colunas pelo cep, a fatura do joao pode ir parar nos dados da maria */



/*
2º EXERCÍCIO:
OBJETIVO: Testar LEFT JOIN com as tabelas Cliente e Fatura.

LÓGICA: 
- Tabelas: Customer (id cliente, sobrenome), Invoice (id fatura).
- União: O exercício pede LEFT JOIN pelas colunas de CEP (o resultado será impreciso também).
*/

/*
SELECT
    Customer.CustomerId,
    Customer.LastName, 
    Invoice.InvoiceId
FROM Customer
LEFT JOIN Invoice ON Customer.PostalCode = Invoice.BillingPostalCode;
*/

-- 388 resultados. nenhum null.




/*
3º EXERCÍCIO:
OBJETIVO: Testar RIGHT JOIN com as tabelas Cliente e Fatura.

LÓGICA: 
- Tabelas: Customer (id cliente, sobrenome), Invoice (id fatura).
- União: O exercício pede RIGHT JOIN pelas colunas de CEP (o resultado será impreciso também).
- Como o SQLite não suporta RIGHT JOIN, vou inverter as tabelas e usar LEFT.
*/

/*
SELECT
    Customer.CustomerId,
    Customer.LastName, 
    Invoice.InvoiceId
FROM Invoice
LEFT JOIN Customer ON Customer.PostalCode = Invoice.BillingPostalCode;
*/

/* 412 resultados. vários nulls nas colunas customerID e last name.
indicando que há faturas sem cep ou que há ceps nas faturas que não 
correspondem aos clientes cadastrados.
*/