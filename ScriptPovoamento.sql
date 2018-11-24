INSERT INTO Localidade
	(Nome)
    VALUES
    ('Terras de Bouro'),
    ('Fontelo'),
    ('Souto'),
    ('Nogueira');


INSERT INTO Cliente
	(Nome, Data_nascimento, Endereco, Id_localidade)
    VALUES
    ('Ana Maria', '1980-02-13', 'Rua da Capela nº12 4700-800', 2),
    ('João Moreira', '1988-04-24', 'Rua da Travessa nº41 4700-801', 2),
    ('Carlos Silva', '1990-08-30', 'Rua 25 de abril nº92 4700-770', 1),
    ('Josefina Andrade', '1999-12-12', 'Avenida Central nº15 4700-540', 3),
    ('José Pereira', '1992-01-05', 'Rua das Veigas nº26 4700-700', 1),
	('Carolina Peixoto', '1986-02-12', 'Rua de Belomonte nº13 4700-705', 1),
    ('António Ferreira', '1984-05-25', 'Rua do Almada nº23 4700-704', 1),
    ('Catarina Cruz', '1985-07-27', 'Rua dos Caldeireiros nº73 4700-706', 1),
    ('Pedro Meireles', '1986-06-02', 'Rua das Carmelitas nº8 4700-302', 4),
    ('Ricardo Carvalho', '1988-11-11', 'Rua do Carvalhido nº50 4700-703', 1),
    ('Anabela Pereira', '1997-12-18', 'Rua de Camões nº44 4700-680', 1),
    ('Rafael Martins', '1989-04-09', 'Avenida Central nº76 4700-540', 3),
    ('Bruno Marques', '1998-11-12', 'Rua de Camões nº25 4700-680', 1),
    ('Joel Lima', '1996-07-17', 'Avenida da Liberdade nº19 4700-370', 4),
    ('Maria Peixoto', '1993-01-29', 'Travessa do Carmo nº64 4700-782', 1),
    ('Sara Gonçaves', '1992-12-09', 'Rua da Laje nº33 4700-791', 1),
    ('Ricardo Oliveira', '1999-06-01', 'Rua da Boavista nº83 4700-720', 1),
    ('Carolina Pinto', '2000-10-21', 'Travessa do Carmo nº22 4700-782', 1),
    ('Daniela Silva','1998-03-10', 'Rua do Souto nº52 4700-255', 4),
    ('Paulo Barros', '1995-09-16', 'Praçeta do Vilar nº27 4700-789', 2),
    ('Débora Morais', '1990-08-14', 'Rua de Penelas nº 38 4700-739', 2),
    ('David Abreu', '1991-05-01', 'Rua do Salitre nº21 4700-229', 4),
    ('Pedro Oliveira', '1988-10-16', 'Rua Fernão Mendes Pinto nº6 4700-734', 1),
    ('Margarida Vasconcelos', '1999-04-06', 'Rua de Penelas nº46 4700-933', 2),
    ('Vitor Barros', '1985-12-03', 'Avenida da República nº57 4700-489', 3),
    ('Patrícia Vidrago', '1994-12-31', 'Rua do Rouxinol nº42 4700-219', 4),
	('Renato Pimentel', '1980-02-22', 'Rua do Fortunato nº30 4700-419', 4),
    ('Filipe Vaz', '1970-04-10', 'Rua do Mercadinho nº29 4700-550', 3),
    ('Rodrigo Moura', '1998-07-28', 'Rua do Salitre nº77 4700-229', 4),
    ('Estér Rodrigues', '1974-11-24', 'Praçeta do Vilar nº16 4700-789', 1),
	('Ana Catarina Sá', '1990-04-28', 'Rua da Boa Vista nº88 4700-720', 1),
    ('Salete Pinheiro', '1989-01-15', 'Rua do Souto nº37 4700-225', 4),
    ('Maria Carla Cruz', '1970-08-30', 'Rua do Rouxinol nº9 4700-219', 4),
    ('Frederico Costa', '2000-03-16', 'Rua do Salitre nº78 4700-229', 4),
    ('João Capa', '1970-05-23', 'Rua da Laje nº10 4700-782', 1),
    ('Hugo Ballesteros', '1998-07-28', 'Rua do Salitre nº90 4700-229', 4),
    ('Marco Paulo', '1979-11-18', 'Rua do Souto nº24 4700-225', 4),
    ('Mariana Gonçalves', '1988-07-22', 'Rua da Boa Vista nº39 4700-720', 1),
    ('Rui Meireles', '1980-01-03', 'Avenida Central nº13 4700-540', 3),
    ('Guilherme Fernandes', '1985-03-25', 'Rua das Carmelitas nº65 4700-302', 4),
    ('Bruna Martins', '1998-04-30', 'Rua de Camões nº28 4700-680', 3),
    ('Roberto Mendes', '1984-11-11', 'Rua Fernão Mendes Pinto nº47 4700-734', 1),
    ('Alexandre Vilaça', '1993-05-17', 'Rua de Camões nº56 4700-680', 1),
    ('Inês Esteves', '1995-06-19', 'Rua dos Caldeireiros nº14 4700-706', 1),
    ('José Condez', '1982-02-28', 'Travessa do Carmo nº91 4700-782', 2),
    ('Nuno Castelo', '1997-01-27', 'Rua do Salitre nº63 4700-229', 4),
    ('Beatriz Castro','1986-12-10', 'Praçeta do Vilar nº4 4700-789', 1),
    ('Luísa Gomes','1990-07-04', 'Avenida da República nº32 4700-489', 3),
    ('Gonçalo Soares', '1992-08-30', 'Rua do Fortunato nº40 4700-419', 3),
    ('Filomena Jesus', '1999-01-27', 'Rua das Carmelitas nº11 4700-302', 1);

INSERT INTO Telemovel
	(Tipo, Numero, Id_Cliente)
    VALUES 
    ('Pessoal', '932343333', 1),
    ('Pessoal', '963442211', 2),
    ('Pessoal', '926843322', 3),
    ('Pessoal', '912376551', 4),
    ('Pessoal', '967389000', 5),
    ('Pessoal', '914465871', 6),
    ('Pessoal', '965523412', 7),
    ('Pessoal', '915444397', 8),
    ('Pessoal', '965111498', 9),
    ('Pessoal', '920186234', 10),
    ('Pessoal', '918073563', 11),
    ('Pessoal', '911275097', 12),
    ('Pessoal', '960082744', 13),
    ('Pessoal', '923581040', 14),
    ('Pessoal', '964520836', 15),
    ('Pessoal', '933815028', 16),
    ('Pessoal', '924138480', 17),
    ('Pessoal', '912910021', 18),
    ('Pessoal', '937156039', 19),
    ('Pessoal', '911234235', 20),
    ('Pessoal', '966134123', 21),
    ('Pessoal', '912345920', 22),
    ('Pessoal', '966127540', 23),
    ('Pessoal', '914275902', 24),
    ('Pessoal', '914725094', 25),
    ('Pessoal', '918920544', 26),
    ('Pessoal', '931029746', 27),
    ('Pessoal', '937180781', 28),
    ('Pessoal', '968152634', 29),
    ('Pessoal', '968233299', 30),
    ('Pessoal', '928471660', 31),
    ('Pessoal', '967177731', 32),
    ('Pessoal', '923445889', 33),
    ('Pessoal', '967336889', 34),
    ('Pessoal', '937180781', 35),
    ('Pessoal', '923442221', 36),
    ('Pessoal', '968788551', 37),
    ('Pessoal', '912123431', 38),
    ('Pessoal', '932456770', 39),
    ('Pessoal', '911213196', 40),
    ('Pessoal', '914800083', 41),
    ('Pessoal', '938467511', 42),
    ('Pessoal', '968743229', 43),
    ('Pessoal', '934560003', 44),
    ('Pessoal', '961937010', 45),
    ('Pessoal', '917208582', 46),
    ('Pessoal', '924710445', 47),
    ('Pessoal', '931381068', 48),
    ('Pessoal', '961793032', 49),
    ('Pessoal', '968471443', 50),
    ('Emergência', '921679271', 8),
    ('Emergência', '935782127', 9),
    ('Emergência', '924741053', 10),
    ('Emergência', '913645237', 11),
    ('Emergência', '963248781', 12),
    ('Emergência', '932471284', 13),
    ('Emergência', '934716232', 14),
    ('Emergência', '960423471', 15),
    ('Emergência', '914235425', 16),
    ('Emergência', '913423552', 17),
    ('Emergência', '960293482', 18),
    ('Emergência', '963470483', 19),
    ('Emergência', '914673456', 20),
    ('Emergência', '935762347', 21),
    ('Emergência', '927654736', 22),
    ('Emergência', '913059463', 23),
    ('Emergência', '914863756', 24),
    ('Emergência', '968374822', 25),
    ('Emergência', '964787384', 26),
    ('Emergência', '937264716', 27),
    ('Emergência', '917346752', 28),
    ('Emergência', '965473876', 29),
    ('Emergência', '910593674', 30),
    ('Emergência', '913876577', 31),
    ('Emergência', '925736458', 32),
    ('Emergência', '914657368', 33),
    ('Emergência', '938728891', 34),
    ('Emergência', '964823781', 35),
    ('Emergência', '937268189', 36),
    ('Emergência', '964837829', 37),
    ('Emergência', '915753567', 38),
    ('Emergência', '924435024', 39),
    ('Emergência', '914353463', 40),
    ('Emergência', '938758279', 41),
    ('Emergência', '967472920', 42),
    ('Emergência', '914738470', 43),
    ('Emergência', '964375728', 44),
    ('Emergência', '935783720', 45),
    ('Emergência', '917487387', 46),
    ('Emergência', '935785720', 47),
    ('Emergência', '967498284', 48),
    ('Emergência', '917487482', 49),
    ('Emergência', '967834702', 50);

INSERT INTO Limitacao_Fisica
	(Nome)
    VALUES
    ( 'Insuficiencia cardiaca'),
    ( 'Paraplegico'),
    ( 'Tendinite'),
    ( 'Hérnea cervical'),
    ( 'Rompimento da cartilagem'),
    ( 'Osteoperose'),
    ( 'Lesão meniscal'),
	( 'Diabético');
    
INSERT INTO Cliente_Limitacao_Fisica
	(Id_Cliente, Id_Limitacao)
    VALUES
    ( 1, 1),
    ( 25, 1),
    ( 2, 2),
    ( 4, 3),
    ( 30, 3),
    ( 5, 4),
    ( 7, 5),
    ( 8, 6),
    ( 10, 7),
	( 1, 8),
    ( 30, 8);

INSERT INTO Professor
	(Nome, Data_nascimento, Endereco, Telemovel, Email, Estado, Id_localidade)
    VALUES
    ('Joana Antunes', '2000-02-13', 'Rua da Cruz nº 20 4700-880', '916060454', 'joana@gmail.com', 'Ativo', 2),
    ('Carlos Sousa', '1970-06-13', 'Avenida da Liberdade nº67 4700-370', '968571332', 'carlosmsousa@gmail.com', 'Ativo', 4),
    ('Andre Gonçalves', '1990-03-02', 'Rua da Laje nº68 4700-870', '933423322', 'andreg@gmail.com', 'Ativo', 2),
    ('Diogo Costa', '1998-08-12', 'Rua da Cruz nº69 4700-880', '912345334', 'diogoCosta@gmail.com', 'Ativo', 2),
	('Susana Esteves', '1988-04-30', 'Rua de Cedofeita nº81 4700-715', '965403215', 'susana@gmail.com', 'Ativo', 1),
    ('Gonçalo Fernandes', '1976-08-01', 'Rua do Rosário nº3 4706-888', '912564732', 'goncalo@gmail.com', 'Ativo', 2),
    ('Afonso Vieira', '1980-12-02', 'Rua do Loureiro nº7 4700-620','913788014', 'afonso@hotmail.com', 'Ativo', 3),
    ('Raquel Chaves', '1992-03-19', 'Rua de Trás nº54 4700-734', '967222514', 'raquel@gmail.com', 'Ativo', 1),
	('Tiago Freitas', '1993-06-22', 'Rua das Flores nº61 4702-603', '962542361', 'tiago@gmail.com', 'Ativo', 3);

INSERT INTO Atividade_Fitness
	(Max_participantes, Nome, Duracao, Sala, Nr_inscritos, Id_professor)
    VALUES
    (20, 'Run', 4500, 1, 10, 1),
    (25, 'Cycling', 4000, 2, 12, 2),
    (20, 'Step', 4500, 3, 16, 3),
    (20, 'Core', 4000, 4, 14, 4),
	(20, 'Pilates', 4500, 5, 12, 3),
    (15, 'Crossfit', 4000, 6, 13, 5),
    (20, 'Body Pump', 4500, 2, 18, 9),
    (20, 'Powerjump', 5000, 4, 16, 6),
    (25, 'Body Combat', 4000, 3, 18, 7),
    (20, 'Hiit', 4500, 5, 10, 8);

INSERT INTO Maquina
	(Tipo, Quantidade)
    VALUES
    ('Passadeira', 20),
    ('Bicicleta', 25),
    ('Step', 15),
    ('Halteres', 20),
	('Bola de Pilates', 15),
    ('Cordas', 15),
    ('Mini-trampolim', 15),
    ('Pesos', 20),
    ('Kettlebell', 20),
    ('Argolas', 16);

INSERT INTO Atividade_Fitness_Maquina
	(Nr_maquinas, Id_atividade, Id_maquina)
    VALUES
    (15,1,1),
    (20,2,2),
    (10,3,3),
    (10,4,4),
    (10,5,5),
    (10,10,6),
    (15,8,7),
    (15,7,8),
    (15,6,9),
    (15,6,10);
    
INSERT INTO Plano
	(Preco, Data_inicio, Estado, Id_professor, Id_cliente)
    VALUES
    (30, '2018-01-01', 'Inativo', 1, 1),
	(40, '2018-02-01', 'Ativo', 2, 2),
	(50, '2018-03-01', 'Inativo', 3, 3),
	(40, '2018-04-01', 'Inativo', 4, 4),
	(35, '2018-10-25', 'Inativo', 3, 18),
	(52, '2017-10-28', 'Inativo', 2, 12),
	(45, '2018-07-12', 'Ativo', 2, 20),
	(37, '2017-09-06', 'Inativo', 1, 13),
	(40, '2018-08-14', 'Ativo', 4, 17),
	(29, '2018-10-03', 'Ativo', 3, 15),
	(25, '2018-09-21', 'Ativo', 9, 21),
	(30, '2018-08-15', 'Ativo', 5, 12),
	(32, '2018-03-13', 'Inativo', 7, 29),
	(45, '2018-04-18', 'Ativo', 6, 28),
	(30, '2018-05-01', 'Inativo', 8, 22),
	(20, '2018-07-02', 'Ativo', 5, 25),
	(35, '2018-01-05', 'Inativo', 9, 12),
	(32, '2018-02-17', 'Ativo', 4, 18),
	(40, '2018-04-24', 'Inativo', 7, 24),
	(27, '2018-05-04', 'Inativo', 6, 23),
	(34, '2018-08-11', 'Ativo', 4, 5),
	(40, '2018-11-17', 'Ativo', 5, 7),
	(25, '2018-06-11', 'Inativo', 9, 11),
	(30, '2018-03-07', 'Inativo', 1, 9),
	(45, '2018-01-12', 'Inativo', 2, 27),
	(42, '2018-09-13', 'Ativo', 7, 14),
	(21, '2018-10-06', 'Ativo', 8, 26),
	(29, '2018-10-19', 'Ativo', 3, 6),
	(35, '2018-11-04', 'Inativo', 6, 10),
	(30, '2018-11-18', 'Ativo', 7, 19),
	(24, '2018-03-21', 'Inativo', 2, 16),
	(32, '2018-01-30', 'Inativo', 9, 8),
	(55, '2018-07-01', 'Ativo', 7, 30),
	(44, '2018-03-11', 'Inativo', 6, 7),
	(28, '2018-09-09', 'Inativo', 2, 18),
	(30, '2018-01-01', 'Inativo', 1, 37),
	(25, '2018-01-15', 'Inativo', 2, 31),
	(35, '2018-02-09', 'Inativo', 1, 37),
	(20, '2018-03-10', 'Ativo', 2, 31),
	(40, '2018-02-16', 'Inativo', 6, 32),
	(30, '2018-04-02', 'Inativo', 1, 37),
	(30, '2018-08-01', 'Inativo', 7, 33),
	(45, '2018-06-20', 'Ativo', 1, 37),
	(40, '2018-06-02', 'Inativo', 3, 34),
	(30, '2018-02-01', 'Inativo', 4, 35),
	(35, '2018-09-09', 'Ativo', 7, 33),
	(40, '2018-06-09', 'Inativo', 1, 37),
	(35, '2018-08-02', 'Ativo', 3, 34),
	(30, '2018-07-01', 'Ativo', 4, 35),
	(60, '2018-03-02', 'Inativo', 9, 36),
	(50, '2018-04-01', 'Ativo', 9, 36),
	(35, '2018-05-05', 'Inativo', 4, 38),
	(45, '2018-01-12', 'Inativo',5, 39),
	(55, '2018-10-01', 'Ativo', 8, 40),
	(36, '2018-04-30', 'Inativo', 2, 41),
	(30, '2018-05-16', 'Inativo', 3, 39),
	(20, '2018-06-30', 'Inativo', 1, 42),
	(40, '2018-02-15', 'Inativo', 6, 43),
	(27, '2018-08-01', 'Ativo', 4, 44),
	(60, '2018-11-01', 'Ativo', 7, 45),
	(35, '2018-10-22', 'Ativo', 5, 39),
	(23, '2018-08-31', 'Ativo', 2, 41),
	(45, '2018-05-01', 'Ativo', 3, 43),
	(35, '2018-11-01', 'Ativo', 9, 42),
	(52, '2017-01-09', 'Inativo', 8, 2),
	(39, '2018-10-11', 'Ativo', 1, 23),
	(45, '2018-03-12', 'Inativo', 7, 15),
	(42, '2018-09-17', 'Ativo', 5, 9),
	(56, '2017-03-15', 'Inativo', 9, 28),
	(27, '2017-12-12', 'Ativo', 7, 10),
	(34, '2017-05-13', 'Inativo', 8, 46),
	(46, '2018-03-30', 'Inativo', 9, 47),
	(51, '2017-11-23', 'Inativo', 3, 48),
	(49, '2017-06-09', 'Inativo', 3, 49),
	(55, '2017-06-29', 'Inativo', 5, 50),
    (43, '2018-05-12', 'Ativo', 4, 29),
    (31, '2018-01-08', 'Ativo', 8, 48),
    (54, '2018-07-06', 'Ativo', 3, 47),
    (35, '2018-02-26', 'Ativo', 2, 50),
    (37, '2018-01-10', 'Ativo', 2, 49),
	(34, '2018-01-13', 'Ativo', 6, 46),
    (40, '2018-01-05', 'Ativo', 7, 13),
    (35, '2018-08-15', 'Ativo', 7, 1),
    (45, '2018-10-05', 'Ativo', 3, 3),
    (31, '2018-09-28', 'Ativo', 6, 4),
    (38, '2018-07-19', 'Ativo', 9, 8),
    (40, '2018-11-14', 'Ativo', 5, 11),
    (58, '2018-06-30', 'Ativo', 7, 16),
    (40, '2018-10-07', 'Ativo', 1, 22),
    (35, '2018-07-10', 'Ativo', 9, 24),
    (32, '2018-08-02', 'Ativo', 2, 27),
    (28, '2018-09-17', 'Ativo', 3, 38),
    (30, '2018-05-23', 'Ativo', 2, 32);   



INSERT INTO Plano_Atividade_Fitness
	(Nr_aulas, Id_plano, Id_atividade)
    VALUES
    (15, 1, 1),
    (10, 2, 2),
    (10, 3, 3),
    (8, 4, 4),
    (10, 8, 2),
    (7, 10, 1),
    (10, 6, 4),
    (12, 5, 7),
    (5, 6, 7),
    (15, 7, 8),
    (10, 8, 9),
    (14, 9, 10),
    (14, 28, 10),
    (12, 10, 5),
    (4, 33, 7),
    (10, 29, 2),
    (15, 31, 4),
    (13, 23, 9),
    (7, 12, 10),
    (4, 5, 6),
    (5, 32, 1),
    (11, 35, 3),
    (10, 30, 4),
    (12, 33, 10),
    (4, 24, 7),
    (5, 11, 8),
    (9, 12, 5),
    (8, 14, 2),
    (12, 17, 9),
    (14, 13, 1),
    (11, 20, 3),
    (5, 22, 7),
    (4, 16, 8),
    (9, 18, 2),
    (14, 34, 3),
    (13, 19, 9),
    (9, 26, 4),
    (11, 15, 10),
    (12, 21, 6),
    (4, 25, 8),
    (6, 27, 7),
	(10, 36, 3),
    (15, 36, 9),
    (10, 36, 4),
    (5, 36, 10),
    (7, 37, 6),
    (9, 37, 8),
    (15, 38, 7),
    (20, 38, 3),
    (25, 39, 9),
    (10, 39, 4),
    (20, 40, 10),
    (20, 40, 6),
    (15, 40, 8),
    (10, 41, 7),
    (6, 41, 9),
    (7, 42, 4),
    (8, 42, 10),
    (10, 42, 6),
    (15, 43, 8),
    (10, 43, 7),
    (3, 44, 9),
    (4, 44, 5),
    (6, 45, 10),
    (7, 45, 6),
    (8, 45, 8),
    (10, 45, 7),
	(11, 46, 9),
    (12, 46, 4),
    (10, 47, 10),
    (9, 47, 6),
    (5, 47, 8),
    (10, 47, 7),
    (12, 47, 3),
    (11, 48, 5),
    (10, 48, 9),
    (9, 49, 6),
    (8, 49, 8),
    (9, 50, 3),
    (10, 51, 7),
	(11, 51, 5),
	(7, 51, 3),
	(9, 51, 2),
    (6, 52, 4),
    (4, 52, 1),
    (8, 52, 9),
    (6, 52, 6),
    (10, 53, 5),
    (8, 53, 7),
    (10, 53, 2),
    (5, 53, 9),
    (8, 54, 1),
    (8, 54, 8),
    (8, 54, 5),
    (6, 54, 7),
    (6, 55, 1),
    (4, 55, 3),
    (3, 55, 9),
    (8, 56, 2),
    (5, 56, 5),
    (6, 56, 8),
    (7, 57, 7),
    (4, 57, 3),
    (5, 57, 9),
    (8, 58, 1),
    (4, 58, 4),
    (4, 58, 6),
    (6, 59, 2),
    (6, 59, 5),
    (2, 59, 8),
    (10, 60, 7),
    (8, 60, 3),
    (4, 60, 2),
    (2, 60, 1),
    (4, 60, 9),
    (6, 60, 8),
    (4, 61, 2),
    (4, 61, 7),
    (4, 61, 5),
    (6, 62, 4),
    (4, 62, 3),
    (5, 62, 6),
    (5, 63, 9),
    (5, 63, 7),
    (4, 63, 5),
    (3, 64, 1),
    (5, 64, 3),
    (7, 54, 9),
    (5, 69, 5),
    (12, 72, 6),
    (6, 66, 8),
    (9, 65, 8),
    (10, 74, 3),
    (7, 73, 2),
    (7, 68, 3),
    (9, 75, 4),
    (8, 71, 3),
    (10, 67, 9),
	(7, 65, 6),
    (12, 70, 4),
    (4, 76, 6),
    (5, 76, 7),
    (8, 76, 3),
	(7, 77, 2),
	(6, 77, 5),
	(9, 78, 1),
	(7, 78, 6),
	(8, 78, 2),
	(10, 79, 6),
	(6, 79, 4),
	(6, 80, 1),
	(7, 80, 3), 
	(5, 80, 7), 
	(15, 81, 1), 
	(10, 82, 2), 
	(5, 82, 4), 
	(8, 83, 7), 
	(6, 84, 1),
    (8, 84, 5),
	(12, 85, 6),
	(9, 86, 4),
	(6, 86, 2),
	(12, 87, 1),
	(5, 87, 9),
	(9, 88, 8),
	(5, 88, 10),
	(7, 88, 1),
	(9, 89, 7),
	(8, 89, 4),
	(4, 90, 6),
	(10, 90, 4),
	(7, 91, 3),
	(6, 91, 10),
	(13, 92, 3),
	(8, 93, 2),
	(5, 93, 6);

