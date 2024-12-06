CREATE TABLE if not exists Clientes (
IDCliente INT PRIMARY KEY,
Nome VARCHAR (100) NOT NULL,
Endereco VARCHAR (200),
Telefone VARCHAR (20));

CREATE TABLE if not exists Produtos (
IDProduto INT PRIMARY KEY,
Nome VARCHAR (100) NOT NULL,
Categoria VARCHAR (50),
Preco DECIMAL (10,2));

CREATE TABLE if not exists Pedidos (
IDPedido INT PRIMARY KEY,
IDCliente INT,
DataPedido DATE,
Total DECIMAL (10,2),
FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente));

CREATE TABLE if not exists ItensPedido (
IDItem INT PRIMARY KEY,
IDPedido INT,
IDProduto INT,
Quantidade INT,
FOREIGN KEY (IDPedido) REFERENCES Pedidos (IDPedido),
FOREIGN KEY (IDProduto) REFERENCES Produtos (IDProduto));

INSERT INTO Clientes (IDCliente, Nome, Endereco, Telefone)
VALUES (1, 'Joao', 'rua augusta', '6946954'), # tinha erro aqui e nos outros inserts. Estava ; e não , como deve ser
(2, 'Maria', 'rua anita', '6342954'),
(3, 'Jose', 'rua dois', '43483578'),
(4, 'Pedro', 'rua quatro', '45783578'); # ; só vai aqui na última linha inserida para finalizar o comando

INSERT INTO Produtos (IDProduto, Nome, Categoria, Preco)
VALUES (1, 'Camiseta branca', 'Roupas', 39.90), # erro aqui também. Estava como string (entre aspas). Como na tabela foi declarado como decimal, causava erro de restrição de domínio
(2, 'Calca jeans', 'Roupas', 89.90),
(3, 'Tenis esportivo', 'Calcados', 199.90);

INSERT INTO Pedidos (IDPedido, IDCliente, DataPedido, Total)
VALUES (1, 1, '2024-06-01', 129.80), # tinha erro aqui também, mesmo de cima
(2, 2, '2024-06-02', 219.80),
(3, 3, '2024-06-03', 189.80);

INSERT INTO ItensPedido (IDItem, IDPedido, IDProduto, Quantidade)
VALUES (1, 1, 1, 2), # erro aqui também, a quantiadade estava como String quando deveria ser INT, ajustei
(2, 2, 2, 1),
(3, 3, 3, 3);

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

DELETE FROM Pedidos # estava com letras maisculas, logo ele não encontrava a tabela pois SQL é case sensitive
WHERE IDCliente = 1 AND DataPedido < '2024-06-01'; # estava data_pedido e esse campo nao existe na tabela

-- COMANDO SELECT -Aliases (nomes alternativos para tabelas e colunas)
SELECT Nome AS NomeCliente,
ENDERECO AS EnderecoCliente
FROM Clientes;

-- COMANDO DISTINCT (pode ser usado para retornar apenas valores distintos (únicos de uma coluna ou combinação de colunas) ou para selecionar valores únicos de uma coluna presente em ambas as tabelas)

SELECT DISTINCT categoria
FROM Produtos;

SELECT DISTINCT C.Nome AS NomeCliente
FROM Clientes C JOIN Pedidos P
ON C.IDCliente = P.IDCliente;
