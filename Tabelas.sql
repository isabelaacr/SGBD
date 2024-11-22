CREATE TABLE Clientes (
   IDCliente INT PRIMARY KEY,
  Nome VARCHAR (100) NOT NULL,
  Endereco VARCHAR (200),
  Telefone VARCHAR (20));

CREATE TABLE Produtos (
  IDProduto INT PRIMARY KEY,
  Nome VARCHAR (100) NOT NULL,
  Categoria VARCHAR (50),
  Preco DECIMAL (10,2));

CREATE TABLE Pedidos (
  IDPedido INT PRIMARY KEY,
  IDCliente INT,
  DataPedido DATE,
  Total DECIMAL (10,2),
  FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente));
