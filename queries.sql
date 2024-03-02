-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database


-- inserindo dados de professores
INSERT INTO professores (nome, sobrenome, área_de_formação, grau_de_formação, email, telefone, tipo_de_telefone) VALUES
    ('João', 'Silva', 'Matemática', 'Licenciatura', 'joao.silva@example.com', '123456789', 'Celular'),
    ('Maria', 'Santos', 'Física', 'Mestrado', 'maria.santos@example.com', '987654321', 'Celular'),
    ('Pedro', 'Oliveira', 'Química', 'Doutorado', 'pedro.oliveira@example.com', '555555555', 'Celular'),
    ('Ana', 'Rodrigues', 'Biologia', 'Especialização', 'ana.rodrigues@example.com', '999999999', 'Celular'),
    ('Carlos', 'Lima', 'História', 'Graduação', 'carlos.lima@example.com', '111111111', 'Celular'),
    ('Luciana', 'Souza', 'Inglês', 'Licenciatura', 'luciana.souza@example.com', '222222222', 'Celular'),
    ('Rafael', 'Costa', 'Espanhol', 'Mestrado', 'rafael.costa@example.com', '333333333', 'Celular'),
    ('Fernanda', 'Almeida', 'Português', 'Doutorado', 'fernanda.almeida@example.com', '444444444', 'Celular'),
    ('Gustavo', 'Ferreira', 'Geografia', 'Graduação', 'gustavo.ferreira@example.com', '777777777', 'Celular'),
    ('Juliana', 'Gomes', 'Educação Física', 'Especialização', 'juliana.gomes@example.com', '888888888', 'Celular');


-- inserindo dados de alunos
INSERT INTO alunos (nome, sobrenome, email, data_de_nascimento, telefone, tipo_de_telefone) VALUES 
('João', 'Silva', 'joao.silva@example.com', '1990-05-15', '123456789', 'celular'),
('Maria', 'Santos', 'maria.santos@example.com', '1992-08-20', '987654321', 'fixo'),
('Pedro', 'Oliveira', 'pedro.oliveira@example.com', '1988-03-10', '456123789', 'celular'),
('Ana', 'Souza', 'ana.souza@example.com', '1995-11-25', '789456123', 'celular'),
('Carlos', 'Ribeiro', 'carlos.ribeiro@example.com', '1997-02-18', '321654987', 'fixo'),
('Juliana', 'Ferreira', 'juliana.ferreira@example.com', '1986-09-30', '654987321', 'celular'),
('Lucas', 'Gomes', 'lucas.gomes@example.com', '1993-07-05', '147258369', 'celular'),
('Mariana', 'Almeida', 'mariana.almeida@example.com', '1998-04-12', '369147258', 'fixo'),
('Paulo', 'Martins', 'paulo.martins@example.com', '1991-12-22', '258369147', 'celular'),
('Fernanda', 'Carvalho', 'fernanda.carvalho@example.com', '1989-06-08', '963852741', 'celular'),
('Gustavo', 'Rodrigues', 'gustavo.rodrigues@example.com', '1994-10-17', '852963147', 'fixo'),
('Aline', 'Pereira', 'aline.pereira@example.com', '1996-01-29', '741852963', 'celular'),
('Marcos', 'Lima', 'marcos.lima@example.com', '1999-08-03', '369852147', 'celular'),
('Carolina', 'Araújo', 'carolina.araujo@example.com', '1987-04-05', '147852369', 'fixo'),
('Gabriel', 'Fernandes', 'gabriel.fernandes@example.com', '1990-11-07', '258369147', 'celular'),
('Isabela', 'Mendes', 'isabela.mendes@example.com', '1992-06-18', '741852963', 'celular'),
('Rafael', 'Dias', 'rafael.dias@example.com', '1993-03-21', '369258147', 'fixo'),
('Larissa', 'Costa', 'larissa.costa@example.com', '1988-09-14', '147369852', 'celular'),
('Rodrigo', 'Nunes', 'rodrigo.nunes@example.com', '1997-07-26', '852147369', 'celular'),
('Luana', 'Pinto', 'luana.pinto@example.com', '1995-12-30', '963147852', 'fixo'),
('Thiago', 'Cavalcanti', 'thiago.cavalcanti@example.com', '1994-05-04', '369852147', 'celular'),
('Camila', 'Correia', 'camila.correia@example.com', '1991-02-09', '147963852', 'celular'),
('Vinícius', 'Azevedo', 'vinicius.azevedo@example.com', '1986-10-11', '852369147', 'fixo'),
('Letícia', 'Ferreira', 'leticia.ferreira@example.com', '1999-08-15', '963852741', 'celular'),
('Marcelo', 'Barbosa', 'marcelo.barbosa@example.com', '1990-04-27', '147852369', 'celular'),
('Tatiane', 'Gonçalves', 'tatiane.goncalves@example.com', '1985-11-02', '369147852', 'fixo'),
('André', 'Melo', 'andre.melo@example.com', '1996-06-13', '852963147', 'celular'),
('Fernanda', 'Cardoso', 'fernanda.cardoso@example.com', '1993-03-24', '741852963', 'celular'),
('Ricardo', 'Oliveira', 'ricardo.oliveira@example.com', '1989-09-28', '369741852', 'fixo'),
('Beatriz', 'Santana', 'beatriz.santana@example.com', '1997-05-10', '963258147', 'celular'),
('Guilherme', 'Pereira', 'guilherme.pereira@example.com', '1992-01-17', '147963852', 'celular'),
('Camila', 'Sousa', 'camila.sousa@example.com', '1994-07-20', '852369147', 'fixo'),
('Leonardo', 'Fernandes', 'leonardo.fernandes@example.com', '1988-12-23', '369147852', 'celular'),
('Amanda', 'Martins', 'amanda.martins@example.com', '1995-10-05', '741852963', 'celular'),
('Rodrigo', 'Costa', 'rodrigo.costa@example.com', '1991-03-08', '369852147', 'fixo'),
('Ana', 'Silva', 'ana.silva@example.com', '1998-09-12', '852147369', 'celular'),
('Bruna', 'Rodrigues', 'bruna.rodrigues@example.com', '1987-06-25', '963852741', 'celular'),
('Paulo', 'Santos', 'paulo.santos@example.com', '1996-02-28', '147963852', 'fixo'),
('Carolina', 'Oliveira', 'carolina.oliveira@example.com', '1993-08-31', '852369147', 'celular'),
('Gabriel', 'Almeida', 'gabriel.almeida@example.com', '1989-11-04', '369147852', 'celular'),
('Larissa', 'Ferreira', 'larissa.ferreira@example.com', '1992-05-17', '741852963', 'fixo'),
('Mateus', 'Gomes', 'mateus.gomes@example.com', '1994-12-20', '369852147', 'celular'),
('Beatriz', 'Pinto', 'beatriz.pinto@example.com', '1997-07-03', '852147369', 'celular'),
('Daniel', 'Araújo', 'daniel.araujo@example.com', '1988-02-06', '963852741', 'fixo'),
('Fernanda', 'Melo', 'fernanda.melo@example.com', '1995-09-09', '147963852', 'celular'),
('Rafael', 'Sousa', 'rafael.sousa@example.com', '1990-04-13', '852369147', 'celular'),
('Aline', 'Ferreira', 'aline.ferreira@example.com', '1986-12-16', '369147852', 'fixo'),
('Bruno', 'Martins', 'bruno.martins@example.com', '1999-01-19', '741852963', 'celular'),
('Juliana', 'Silva', 'juliana.silva@example.com', '1991-06-22', '369852147', 'celular'),
('Lucas', 'Rodrigues', 'lucas.rodrigues@example.com', '1994-11-25', '852147369', 'fixo');


-- endereços dos alunos
INSERT INTO enderecos_alunos (id_aluno, bairro, rua, numero, complemento) VALUES
    (1, 'Centro', 'Rua A', 123, 'Apt. 101'),
    (2, 'Jardim', 'Rua B', 456, 'Casa 2'),
    (3, 'Barra', 'Rua C', 789, '-'),
    (4, 'Liberdade', 'Rua D', 321, 'Bloco B'),
    (5, 'Praia', 'Rua E', 654, '-'),
    (6, 'Centro', 'Rua F', 987, 'Apt. 202'),
    (7, 'Jardim', 'Rua G', 123, 'Casa 3'),
    (8, 'Barra', 'Rua H', 456, '-'),
    (9, 'Liberdade', 'Rua I', 789, 'Bloco C'),
    (10, 'Praia', 'Rua J', 321, '-'),
    (11, 'Centro', 'Rua K', 654, 'Apt. 303'),
    (12, 'Jardim', 'Rua L', 987, 'Casa 4'),
    (13, 'Barra', 'Rua M', 123, '-'),
    (14, 'Liberdade', 'Rua N', 456, 'Bloco D'),
    (15, 'Praia', 'Rua O', 789, '-'),
    (16, 'Centro', 'Rua P', 321, 'Apt. 404'),
    (17, 'Jardim', 'Rua Q', 654, 'Casa 5'),
    (18, 'Barra', 'Rua R', 987, '-'),
    (19, 'Liberdade', 'Rua S', 123, 'Bloco E'),
    (20, 'Praia', 'Rua T', 456, '-'),
    (21, 'Centro', 'Rua U', 789, 'Apt. 505'),
    (22, 'Jardim', 'Rua V', 321, 'Casa 6'),
    (23, 'Barra', 'Rua W', 654, '-'),
    (24, 'Liberdade', 'Rua X', 987, 'Bloco F'),
    (25, 'Praia', 'Rua Y', 123, '-'),
    (26, 'Centro', 'Rua Z', 456, 'Apt. 606'),
    (27, 'Jardim', 'Rua AA', 789, 'Casa 7'),
    (28, 'Barra', 'Rua BB', 321, '-'),
    (29, 'Liberdade', 'Rua CC', 654, 'Bloco G'),
    (30, 'Praia', 'Rua DD', 987, '-'),
    (31, 'Centro', 'Rua EE', 123, 'Apt. 707'),
    (32, 'Jardim', 'Rua FF', 456, 'Casa 8'),
    (33, 'Barra', 'Rua GG', 789, '-'),
    (34, 'Liberdade', 'Rua HH', 321, 'Bloco H'),
    (35, 'Praia', 'Rua II', 654, '-'),
    (36, 'Centro', 'Rua JJ', 987, 'Apt. 808'),
    (37, 'Jardim', 'Rua KK', 123, 'Casa 9'),
    (38, 'Barra', 'Rua LL', 456, '-'),
    (39, 'Liberdade', 'Rua MM', 789, 'Bloco I'),
    (40, 'Praia', 'Rua NN', 321, '-'),
    (41, 'Centro', 'Rua OO', 654, 'Apt. 909'),
    (42, 'Jardim', 'Rua PP', 987, 'Casa 10'),
    (43, 'Barra', 'Rua QQ', 123, '-'),
    (44, 'Liberdade', 'Rua RR', 456, 'Bloco J'),
    (45, 'Praia', 'Rua SS', 789, '-'),
    (46, 'Centro', 'Rua TT', 321, 'Apt. 1010'),
    (47, 'Jardim', 'Rua UU', 654, 'Casa 11'),
    (48, 'Barra', 'Rua VV', 987, '-'),
    (49, 'Liberdade', 'Rua WW', 123, 'Bloco K'),
    (50, 'Praia', 'Rua XX', 456, '-');

-- inserindo endereços dos professores
INSERT INTO enderecos_professores (id_professor, bairro, rua, numero, complemento) VALUES
    (1, 'Centro', 'Rua A', 123, 'Apto 101'),
    (2, 'Bairro X', 'Rua B', 456, '-'),
    (3, 'Bairro Y', 'Rua C', 789, 'Casa 2'),
    (4, 'Bairro Z', 'Rua D', 321, '-'),
    (5, 'Centro', 'Rua E', 654, 'Bloco A'),
    (6, 'Bairro W', 'Rua F', 987, '-'),
    (7, 'Bairro V', 'Rua G', 654, 'Casa 3'),
    (8, 'Centro', 'Rua H', 321, '-'),
    (9, 'Bairro U', 'Rua I', 147, 'Sala 2'),
    (10, 'Bairro T', 'Rua J', 258, '-');


-- criando turmas
INSERT INTO turmas ("letra_da_turma", "ano_letivo", "turno", "serie")
VALUES
    ('A', 2024, 'MANHÃ', '1º ano'),
    ('A', 2024, 'TARDE', '2º ano'),
    ('A', 2024, 'NOITE', '3º ano'),
    ('A', 2024, 'INTEGRAL', '4º ano'),
    ('A', 2024, 'MANHÃ', '5º ano'),
    ('A', 2024, 'TARDE', '6º ano'),
    ('A', 2024, 'NOITE', '7º ano'),
    ('A', 2024, 'INTEGRAL', '8º ano'),
    ('A', 2024, 'MANHÃ', '9º ano');


-- Inserindo todas as matérias na tabela matérias
INSERT INTO matérias ("nome")
VALUES
    ('Matemática'),
    ('Física'),
    ('Química'),
    ('Biologia'),
    ('História'),
    ('Inglês'),
    ('Espanhol'),
    ('Português'),
    ('Geografia'),
    ('Educação Física');


-- inserindo alunos nas turmas
INSERT INTO alunos_por_turma (id_turma, id_aluno) VALUES
    (1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
    (2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
    (3, 11), (3, 12), (3, 13), (3, 14), (3, 15),
    (4, 16), (4, 17), (4, 18), (4, 19), (4, 20),
    (5, 21), (5, 22), (5, 23), (5, 24), (5, 25),
    (6, 26), (6, 27), (6, 28), (6, 29), (6, 30),
    (7, 31), (7, 32), (7, 33), (7, 34), (7, 35),
    (8, 36), (8, 37), (8, 38), (8, 39), (8, 40),
    (9, 41), (9, 42), (9, 43), (9, 44), (9, 45),
    (10, 46), (10, 47), (10, 48), (10, 49), (10, 50);


-- Inserindo dados de alunos em todas as matérias
INSERT INTO boletim (id_aluno, id_matéria, id_turma, id_professor) VALUES
    -- Aluno 1
    (1, 1, 1, 1),  -- Matemática
    (1, 2, 1, 2),  -- Física
    (1, 3, 1, 3),  -- Química
    (1, 4, 1, 4),  -- Biologia
    (1, 5, 1, 5),  -- História
    (1, 6, 1, 6),  -- Inglês
    (1, 7, 1, 7),  -- Espanhol
    (1, 8, 1, 8),  -- Português
    (1, 9, 1, 9),  -- Geografia
    (1, 10, 1, 10),  -- Educação Física
    -- Aluno 2
    (2, 1, 1, 1),  -- Matemática
    (2, 2, 1, 2),  -- Física
    (2, 3, 1, 3),  -- Química
    (2, 4, 1, 4),  -- Biologia
    (2, 5, 1, 5),  -- História
    (2, 6, 1, 6),  -- Inglês
    (2, 7, 1, 7),  -- Espanhol
    (2, 8, 1, 8),  -- Português
    (2, 9, 1, 9),  -- Geografia
    (2, 10, 1, 10),  -- Educação Física
    -- aluno 3
    (3, 1, 1, 1),  -- Matemática
    (3, 2, 1, 2),  -- Física
    (3, 3, 1, 3),  -- Química
    (3, 4, 1, 4),  -- Biologia
    (3, 5, 1, 5),  -- História
    (3, 6, 1, 6),  -- Inglês
    (3, 7, 1, 7),  -- Espanhol
    (3, 8, 1, 8),  -- Português
    (3, 9, 1, 9),  -- Geografia
    (3, 10, 1, 10),  -- Educação Física
    -- Aluno 4
    (4, 1, 1, 1),  -- Matemática
    (4, 2, 1, 2),  -- Física
    (4, 3, 1, 3),  -- Química
    (4, 4, 1, 4),  -- Biologia
    (4, 5, 1, 5),  -- História
    (4, 6, 1, 6),  -- Inglês
    (4, 7, 1, 7),  -- Espanhol
    (4, 8, 1, 8),  -- Português
    (4, 9, 1, 9),  -- Geografia
    (4, 10, 1, 10),  -- Educação Física
    -- Aluno 5
    (5, 1, 1, 1),  -- Matemática
    (5, 2, 1, 2),  -- Física
    (5, 3, 1, 3),  -- Química
    (5, 4, 1, 4),  -- Biologia
    (5, 5, 1, 5),  -- História
    (5, 6, 1, 6),  -- Inglês
    (5, 7, 1, 7),  -- Espanhol
    (5, 8, 1, 8),  -- Português
    (5, 9, 1, 9),  -- Geografia
    (5, 10, 1, 10),  -- Educação Física
    -- Aluno 6
    (6, 1, 1, 1),  -- Matemática
    (6, 2, 1, 2),  -- Física
    (6, 3, 1, 3),  -- Química
    (6, 4, 1, 4),  -- Biologia
    (6, 5, 1, 5),  -- História
    (6, 6, 1, 6),  -- Inglês
    (6, 7, 1, 7),  -- Espanhol
    (6, 8, 1, 8),  -- Português
    (6, 9, 1, 9),  -- Geografia
    (6, 10, 1, 10),  -- Educação Física
    -- Aluno 7
    (7, 1, 1, 1),  -- Matemática
    (7, 2, 1, 2),  -- Física
    (7, 3, 1, 3),  -- Química
    (7, 4, 1, 4),  -- Biologia
    (7, 5, 1, 5),  -- História
    (7, 6, 1, 6),  -- Inglês
    (7, 7, 1, 7),  -- Espanhol
    (7, 8, 1, 8),  -- Português
    (7, 9, 1, 9),  -- Geografia
    (7, 10, 1, 10),  -- Educação Física
    -- Aluno 8
    (8, 1, 1, 1),  -- Matemática
    (8, 2, 1, 2),  -- Física
    (8, 3, 1, 3),  -- Química
    (8, 4, 1, 4),  -- Biologia
    (8, 5, 1, 5),  -- História
    (8, 6, 1, 6),  -- Inglês
    (8, 7, 1, 7),  -- Espanhol
    (8, 8, 1, 8),  -- Português
    (8, 9, 1, 9),  -- Geografia
    (8, 10, 1, 10),  -- Educação Física
    -- Aluno 9
    (9, 1, 1, 1),  -- Matemática
    (9, 2, 1, 2),  -- Física
    (9, 3, 1, 3),  -- Química
    (9, 4, 1, 4),  -- Biologia
    (9, 5, 1, 5),  -- História
    (9, 6, 1, 6),  -- Inglês
    (9, 7, 1, 7),  -- Espanhol
    (9, 8, 1, 8),  -- Português
    (9, 9, 1, 9),  -- Geografia
    (9, 10, 1, 10),  -- Educação Física
    -- Aluno 10
    (10, 1, 1, 1),  -- Matemática
    (10, 2, 1, 2),  -- Física
    (10, 3, 1, 3),  -- Química
    (10, 4, 1, 4),  -- Biologia
    (10, 5, 1, 5),  -- História
    (10, 6, 1, 6),  -- Inglês
    (10, 7, 1, 7),  -- Espanhol
    (10, 8, 1, 8),  -- Português
    (10, 9, 1, 9),  -- Geografia
    (10, 10, 1, 10);  -- Educação Física



-- inserindo notas de um aluno específico
UPDATE boletim 
SET nota_p1 = 8.5, nota_p2 = 9.0, nota_p3 = 7.5, nota_p4 = 8.0
WHERE id_aluno = 6 AND id_turma = 1 AND id_matéria = 1 AND id_professor = 1;

-- mostrar o boletim de um aluno específico
SELECT id_aluno, matérias.nome, nota_p1, nota_p2, nota_p3, nota_p4
FROM boletim
JOIN matérias ON matérias.id = boletim.id_matéria
WHERE id_aluno = 6 AND id_turma = 1;


SELECT *
FROM alunos;

-- removendo o boletim do aluno 10, turma 1
DELETE FROM boletim
WHERE id_aluno = 10 AND id_turma = 1;

-- professor atualizando a nota de um aluno
UPDATE "boletim"
SET nota_p3 = 6 
WHERE id_turma = 1
AND id_professor = 1
AND id_matéria = 1
AND id_aluno = 1;

-- Atualizando as notas de um aluno
UPDATE boletim 
SET nota_p1 = 8.5, nota_p2 = 9.0, nota_p3 = 7.5, nota_p4 = 8.0
WHERE id_aluno = 1 AND id_turma = 1 AND id_matéria = 1 AND id_professor = 1;

UPDATE boletim 
SET nota_p1 = 7.0, nota_p2 = 8.0, nota_p3 = 6.5, nota_p4 = 7.5
WHERE id_aluno = 1 AND id_turma = 1 AND id_matéria = 2 AND id_professor = 2;