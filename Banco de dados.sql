CREATE TABLE if not exists  Clientes (
  IDCliente INT PRIMARY KEY,
  Nome VARCHAR (100) NOT NULL,
  Endereco VARCHAR (200),
  Telefone VARCHAR (20));
 
CREATE TABLE  if not exists Produtos (
  IDProduto INT PRIMARY KEY,
  Nome VARCHAR (100) NOT NULL,
  Categoria VARCHAR (50),
  Preco DECIMAL (10,2));
 
CREATE TABLE  if not exists Pedidos (
  IDPedido INT PRIMARY KEY,
  IDCliente INT,
  DataPedido DATE,
  Total DECIMAL (10,2),
  FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente));
 
CREATE TABLE  if not exists ItensPedido (
  IDItem INT PRIMARY KEY,
  IDPedido INT,
  IDProduto INT,
  Quantidade INT,
  FOREIGN KEY (IDPedido) REFERENCES Pedidos (IDPedido),
  FOREIGN KEY (IDProduto) REFERENCES Produtos (IDProduto));

INSERT INTO Clientes (IDCliente, Nome, Endereco, Telefone)
VALUES (1, 'Joao', 'rua augusta', '6946954');
       (2, 'Maria', 'rua anita', '6342954'),
       (3, 'Jose', 'rua dois', '43483578'); 
       (4, 'Pedro', 'rua quatro', '45783578');
       
INSERT INTO Produtos (IDProduto, Nome, Categoria, Preco)
VALUES (1, 'Camiseta branca', 'Roupas', 'R$39,90');
	     (2, 'Calca jeans', 'Roupas', 'R$89,90');
       (3, 'Tenis esportivo', 'Calcados', 'R$199,90');
       
INSERT INTO Pedidos (IDPedido, IDCliente, DataPedido, Total)
VALUES (1, 1, '2024-06-01', 'R$129,80');
	     (2, 2, '2024-06-02', 'R$219,80');
       (3, 3, '2024-06-03', 'R$189,80');

INSERT INTO ItensPedido (IDItem, IDPedido, IDProduto, Quantidade)
VALUES (1, 1, 1, '2');
       (2, 2, 2, '1');
       (3, 3, 3, '3');
       (4, 4, 4, '1');

UPDATE Clientes 
	SET Telefone = '999999'
	WHERE Nome = 'Joao';
    
UPDATE Pedidos 
	SET Total = 200.0
    where IDCliente = 1 AND DataPedido >= '2024-06-01';
    
UPDATE Produtos 
	SET Preco = Preco * 1.1;

DELETE FROM Clientes
-- WHERE IDCliente = 2; possui id referencial e por isso vai dar erro
WHERE IDCliente = 4;

DELETE FROM PEDIDOS 
	WHERE IDCliente = 1 AND data_pedido < '2024-06-01';

