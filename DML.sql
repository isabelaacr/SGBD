-- INSERT INTO table_name (column1, column2,...)

INSERT INTO Clientes (IDCliente, Nome, Endereco, Telefone)
VALUES (1, 'Joao', 'rua augusta', '6946954');

-- SELECT coluna1, coluna2,...
-- FROM nome_da_tabela

SELECT * FROM Clientes;

INSERT INTO Clientes (IDCliente, Nome, Endereco, Telefone)
VALUES (2, 'Maria', 'rua anita', '6342954'),
       (3, 'Jose', 'rua dois', '6322954');  -- Não tenho atributos nomeados

INSERT INTO Clientes  -- omitindo os atributos, porém seguindo a ordem dos atributos na tabela
VALUES (4, 'Pedro', 'rua quatro', '45783578');

-- COMANDO SET

SET @nome = 'Pedrita';
SET @end = 'rua do fim';
SET @tel = '34677547';

INSERT INTO Clientes	
	VALUES (5, @nome, @end, @tel);

-- COMANDO UPDATE (para atualizar uma ou mais colunas de uma tabela)

UPDATE Clientes 
	SET Telefone = '999999'
	WHERE Nome = 'Joao';
