-- COMANDO SELECT -Aliases (nomes alternativos para tabelas e colunas)
SELECT Nome AS NomeCliente,
  ENDERECO AS EnderecoCliente
FROM Clientes;

SELECT C.Nome AS NomeCliente
  FROM Clientes C JOIN Pedidos P
  ON C.IDCliente = P.IDCliente;

-- COMANDO DISTINCT (pode ser usado para retornar apenas valores distintos (únicos de uma coluna ou combinação de colunas) ou para selecionar valores únicos de uma coluna presente em ambas as tabelas)

SELECT DISTINCT categoria
  FROM Produtos;

SELECT DISTINCT C.Nome AS NomeCliente
	FROM Clientes C JOIN Pedidos P
	ON C.IDCliente = P.IDCliente;
