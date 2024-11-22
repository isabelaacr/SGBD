-- COMANDO SELECT -Aliases (nomes alternativos para tabelas e colunas)
SELECT Nome AS NomeCliente,
  ENDERECO AS EnderecoCliente
FROM Clientes;

SELECT C.Nome AS NomeCliente
  FROM Clientes C JOIN Pedidos P
  ON C.IDCliente = P.IDCliente;
