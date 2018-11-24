-- Obter o numero total de clientes do ginasio
SELECT count(C.Id_cliente) AS Nr_Clientes FROM Cliente AS C;

-- Verificar o numero de professores que lecionam no ginasio
SELECT count(P.Id_professor) AS Nr_Professores FROM Professor AS P;

-- Saber que professor leciona certa atividade fisica
SELECT P.Nome AS Nome_Professor FROM Professor AS P
INNER JOIN Atividade_Fitness AS A ON A.Id_professor = P.Id_Professor
WHERE A.nome = 'Step';

-- Conhecer a sala onde a atividade é lecionada
SELECT A.Sala FROM Atividade_Fitness AS A
WHERE A.Id_atividade = 7;

-- Consultar os planos realizados por um dado cliente
DROP PROCEDURE IF EXISTS planos_cliente

DELIMITER $$
CREATE PROCEDURE planos_cliente (IN nome_cliente VARCHAR(45)) 
BEGIN
SELECT P.Id_plano, P.Preco, P.Data_inicio FROM Cliente AS C
INNER JOIN Plano AS P ON P.Id_cliente = C.Id_cliente
WHERE C.Nome = nome_cliente;
END $$
DELIMITER ;

CALL planos_cliente ('Ana Maria');

-- Identificar o Top 3 de clientes com maior número de planos associados
SELECT count(P.Id_plano) AS Nr_Planos, C.Nome FROM Plano AS P
INNER JOIN Cliente AS C ON C.Id_cliente = P.Id_cliente
GROUP BY C.Nome
ORDER BY Nr_planos DESC
LIMIT 3;

-- Obter o Top 3 das atividades com mais alunos inscritos
SELECT count(P.Id_plano) AS Nr_Inscritos, A.Nome FROM Plano AS P
INNER JOIN Plano_Atividade_Fitness AS PA ON PA.Id_plano = P.Id_plano
INNER JOIN Atividade_Fitness AS A ON A.Id_atividade = PA.Id_atividade
WHERE P.Estado = 'Ativo'
GROUP BY A.Id_atividade 
ORDER BY Nr_inscritos DESC
LIMIT 3;

-- Identificar os planos elaborados por cada professor
SELECT count(P.Id_plano) AS Nr_Planos, PR.Nome FROM Plano AS P
INNER JOIN Professor AS PR ON PR.Id_professor = P.Id_professor
GROUP BY PR.Nome
ORDER BY Nr_planos DESC;

-- Reconhecer o professor que lecionou mais atividades
SELECT count(A.Id_professor) AS Nr_Atividades, P.Nome FROM Atividade_Fitness AS A
INNER JOIN Professor AS P ON P.Id_professor = A.Id_professor
GROUP BY A.Id_professor
ORDER BY Nr_atividades DESC
LIMIT 1;

-- Atividade fitness mais frequentada por um determinado aluno
DROP PROCEDURE IF EXISTS atividade_frequentada
DELIMITER $$
CREATE PROCEDURE atividade_frequentada (IN nome_aluno VARCHAR(45)) 
BEGIN
SELECT C.Nome, sum(PA.Nr_aulas) AS Nr_Aulas, A.Nome AS Atividade FROM Cliente AS C
INNER JOIN Plano AS P ON P.Id_cliente = C.Id_cliente
INNER JOIN Plano_Atividade_Fitness AS PA ON PA.Id_plano = P.Id_plano
INNER JOIN Atividade_Fitness AS A ON PA.Id_atividade = A.Id_atividade
WHERE C.Nome = nome_aluno
GROUP BY A.Nome, PA.Nr_aulas
ORDER BY PA.Nr_aulas DESC
LIMIT 1;
END $$
DELIMITER ;

CALL atividade_frequentada('Carolina Pinto');

-- Verificar o Top 3 dos alunos com maior número de aulas de uma determinada atividade fitness
SELECT sum(PA.Nr_aulas) AS Nr_Aulas, C.Nome AS Cliente FROM Plano_Atividade_Fitness AS PA
INNER JOIN Plano AS P ON P.Id_plano = PA.Id_plano
INNER JOIN Atividade_Fitness AS A ON A.Id_atividade = PA.Id_atividade
INNER JOIN Cliente AS C ON C.Id_cliente = P.Id_cliente
WHERE A.Nome = 'Run'
GROUP BY P.Id_cliente
ORDER BY Nr_aulas DESC
LIMIT 3;

-- As atividades fitness dadas por um professor 
DROP PROCEDURE IF EXISTS atividades_professor;
DELIMITER $$
CREATE PROCEDURE atividades_professor (IN nome_professor VARCHAR(45)) 
BEGIN
SELECT A.Nome FROM Professor AS P
INNER JOIN Atividade_Fitness AS A ON A.Id_professor = P.Id_professor
WHERE P.Nome = nome_professor;
END $$
DELIMITER ;

CALL atividades_professor ('Andre Gonçalves');

-- Devolver os planos elaborados por um professor ordenados pelo preço
DROP PROCEDURE IF EXISTS planos_professor;

DELIMITER $$
CREATE PROCEDURE planos_professor (IN nome_professor VARCHAR(45)) 
BEGIN
SELECT PL.Preco , C.Nome AS NomeCliente FROM Professor AS P
INNER JOIN Plano AS PL ON PL.Id_professor = P.Id_professor
INNER JOIN Cliente AS C ON C.Id_cliente = PL.Id_cliente
WHERE P.Nome = nome_professor
ORDER BY PL.preco DESC;
END $$
DELIMITER ;

CALL planos_professor ('Andre Gonçalves');

-- Nomes e contactos dos alunos que frequentam certa atividade
DROP PROCEDURE IF EXISTS alunos_atividade
DELIMITER $$
CREATE PROCEDURE alunos_atividade (IN nome_atividade VARCHAR(45)) 
BEGIN
SELECT C.Nome, T.Numero, T.Tipo FROM Atividade_Fitness AS A
INNER JOIN Plano_Atividade_Fitness AS PA ON PA.Id_atividade = A.Id_atividade
INNER JOIN Plano AS P ON P.Id_plano = PA.Id_plano
INNER JOIN Cliente AS C ON C.Id_cliente = P.Id_cliente
INNER JOIN Telemovel AS T ON C.Id_cliente = T.Id_cliente
WHERE P.Estado = 'Ativo'
AND A.Nome = nome_atividade;
END $$
DELIMITER ;

CALL alunos_atividade('Cycling');


-- Ver quais os planos que ja foram realizados por um dado cliente com determinado estado (ativo ou inativo)
DROP PROCEDURE IF EXISTS estado_planos
DELIMITER $$
CREATE PROCEDURE estado_planos (IN nome_cliente VARCHAR(45), IN estado VARCHAR(45)) 
BEGIN
SELECT P.Id_plano, P.Preco, P.Data_inicio AS Inicio FROM Cliente AS C
INNER JOIN Plano AS P ON P.Id_cliente = C.Id_cliente
WHERE C.Nome = nome_cliente
AND P.Estado = estado;
END $$
DELIMITER ;

CALL estado_planos('Marco Paulo', 'Inativo');

-- Obter todos os alunos atuais numa dada atividade
SELECT A.Nr_inscritos AS Inscritos FROM Atividade_Fitness AS A
WHERE A.Nome = 'Pilates';