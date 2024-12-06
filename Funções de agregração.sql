-- COUNT: usada para contar o número de linhas retornadas por uma consulta.

SELECT COUNT(*) AS total_linhas
FROM tabela;

-- COUNT(*) conta o número de linhas na tabela chamada tabela. O resultado é retornado como total_linhas.

-- SUM: calcula a soma soa calores de uma coluna numérica

SELECT SUM(preco) AS total_vendas
FROM vendas;

-- SUM(preco) soma todos os valores da coluna preco da tabela vendas. O resultado será retornado como total_vendas.

-- AVG: Calcula a média aritmética de um conjunto de valores contidos em um campo especificado em uma consulta.

SELECT AVG(salario) AS salario_medio
FROM funcionarios;

-- AVG(salario) calcula a média de todos os valores da coluna salario na tabela funcionarios. O resultado será mostrado como salario_medio.

-- MAX: retorna o valor máximo de uma coluna

SELECT MAX(idade) AS idade_maxima
FROM pessoas;

-- MAX(idade) retorna o valor máximo da coluna idade da tabela pessoas, e o resultado é exibido como idade_maxima

-- MIN: retorna o valor mínimo de uma coluna

SELECT MIN(idade) AS idade_minima
FROM pessoas;

-- MIN(idade) retorna o valor mínimo da coluna idade da tabela pessoas. O resultado será mostrado como idade_minima.

-- GROUP BY: agrupar registros que possuem valores iguais

SELECT departamento, AVG(salario) AS salario_medio
FROM funcionarios
GROUP BY departamento;

--  a cláusula GROUP BY departamento agrupa os registros da tabela funcionarios por departamento e calcula a média de salários para cada departamento usando AVG(salario).
