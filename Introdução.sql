CREATE TABLE ExemploNumerico (
  id INT, 
  preco DECIMAL (10,2)
  );

CREATE TABLE Alunos (
  	id_alunoINT PRIMARY KEY,
  	nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    curso VARCHAR(50)
  );

CREATE TABLE ExemploString (
  	sexo CHAR(1), 
    nome VARCHAR(50),
    descricao TEXT
  )

CREATE TABLE ExemploDataHora (
  id INT,
  data_nascimento DATE, 
  hora_registro TIME,
  data_hora TIMESTAMP
  );

CREATE table ExemploBooleano (
  id INT,
  ativo BOOLEAN
  );

CREATE TABLE ExemploBLOB (
  	id INT,
  imagem BLOB
  );

CREATE TABLE ExemploNull (
  id INT PRIMARY KEY,
  nome VARCHAR (50) NOT NULL
  );

create TABLE ExemploUnique (
  id INT PRIMARY KEY,
  email VARCHAR (100) UNIQUE
);

create TABLE ExemploPrimaryKey (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR (50)
  );

CREATE TABLE Cursos (
  	id INT PRIMARY KEY,
    nome VARCHAR (50)
  );
  
  CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR (50),
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES Cursos (id)
    );

CREATE TABLE ExemploCheck (
  id INT PRIMARY KEY,
  idade INT CHECK (idade >= 18)
  );

CREATE TABLE ExemploDefault (
  id INT PRIMARY KEY,
  estado_civil VARCHAR (20) DEFAULT 'Solteiro'
  );

CREATE TABLE Funcionarios (
 IDFuncionario INT PRIMARY KEY,
  Idade INT CHECK (Idade >= 18 and Idade <= 100)
  Cargo VARCHAR (50),
  Salario DECIMAL (10, 2) CHECK (Salario >= 0)
  );

CREATE TABLE Produtos (
 IDPRODUTO INT PRIMARY KEY,
  Nome VARCHAR (100),
  Preco DECIMAL (10, 2)
  Estado VARCHAR (20)
  CHECK (Status IN ('Ativo','Inativo','Em estoque'))
  );
