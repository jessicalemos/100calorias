DROP PROCEDURE IF EXISTS inserir_professor;

DELIMITER $$
CREATE PROCEDURE inserir_professor(IN nome VARCHAR(45), IN datanascimento DATE, IN rua VARCHAR(45),
		IN codigopostal VARCHAR(45), IN telemovel VARCHAR(45), IN email VARCHAR(45))

		BEGIN
		Declare erro Bool default 0;
		declare continue handler for SQLEXCEPTION set erro = 1; 
        start transaction;
		INSERT INTO Professor(Nome, Data_nascimento, Rua, Codigo_postal, Telemovel, Email)
				VALUE (nome, datanascimento, rua, codigopostal, telemovel, email);
        	if erro then ROLLBACK;
    else commit;
    
    END IF;
        
END $$  
DELIMITER ;