-- Obter todos os primeiros e últimos nomes dos funcionários que são de Calgary ou Edmonton.

SELECT FirstName, LastName, City
FROM Employee
WHERE City = 'Calgary' OR City = 'Edmonton';