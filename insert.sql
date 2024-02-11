DELETE FROM professores;
DELETE FROM alunos;
DELETE FROM turmas;
DELETE FROM turma_aluno;
DELETE FROM boletim;

-- inserindo dados de professores
INSERT INTO professores (nome, sobrenome, grau_formacao, email, telefone, tipo_de_telefone, bairro, rua, "n°", complemento) VALUES
('Joao', 'Silva', 'Doutorado', 'joao@example.com', '123456789', 'Celular', 'Centro', 'Rua Principal', 100, 'Apto 101'),
('Maria', 'Santos', 'Mestrado', 'maria@example.com', '987654321', 'Residencial', 'Barra', 'Frente à Praça', 200, 'Andar 2'),
('Carlos', 'Oliveira', 'Especialização', 'carlos@example.com', '456123789', 'Trabalho', 'Botafogo', 'Avenida Principal', 300, 'Escritório 2'),
('Ana', 'Soares', 'Doutorado', 'ana@example.com', '789456123', 'Outro', 'Tijuca', 'Rua do Comércio', 400, '-'),
('Pedro', 'Costa', 'Graduação', 'pedro@example.com', '321654987','-' , 'Copacabana', 'Avenida Beira-Mar', 500, '-');


-- inserindo dados de alunos
INSERT INTO alunos ("nome", "sobrenome", "email", "data_de_nascimento", "telefone", "tipo_de_telefone", "bairro", "rua", "n°", "complemento") VALUES
('Maria', 'Silva', 'maria@example.com', '2000-05-15', '999999999', 'celular', 'Centro', 'Rua A', 123, 'Apto 101'),
('João', 'Santos', 'joao@example.com', '1999-10-20', '888888888', 'celular', 'Bairro Norte', 'Rua B', 456, 'Casa 2'),
('Ana', 'Oliveira', 'ana@example.com', '2001-03-25', '777777777', 'celular', 'Bairro Sul', 'Rua C', 789, 'Bloco D'),
('Pedro', 'Ferreira', 'pedro@example.com', '2002-07-12', '666666666', 'celular', 'Bairro Leste', 'Rua D', 1011, 'Casa 3'),
('Carla', 'Almeida', 'carla@example.com', '2003-12-30', '555555555', 'celular', 'Bairro Oeste', 'Rua E', 1213, 'Apartamento 4');


-- criando turmas
INSERT INTO turmas ("letra_da_turma", "ano_letivo", "turno", "serie")
VALUES
    ('A', 2024, 'MANHÃ', '1º ano'),
    ('B', 2024, 'TARDE', '2º ano'),
    ('C', 2024, 'NOITE', '3º ano'),
    ('D', 2024, 'INTEGRAL', '4º ano'),
    ('E', 2024, 'MANHÃ', '5º ano'),
    ('A', 2024, 'TARDE', '6º ano'),
    ('B', 2024, 'NOITE', '7º ano'),
    ('C', 2024, 'INTEGRAL', '8º ano'),
    ('D', 2024, 'MANHÃ', '9º ano'),
    ('E', 2024, 'TARDE', '1º ano');


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


-- Inserindo alunos do ID 1 ao 5 na turma 3
INSERT INTO turma_aluno (id_turma, id_aluno)
VALUES
    (3, 1),
    (3, 2),
    (3, 3),
    (3, 4),
    (3, 5);


-- Cadastrando o aluno com id = 1 em 5 matérias
INSERT INTO boletim ("id_aluno", "id_matéria", "id_professor", "id_turma")
VALUES
    (1, 1, 1, 1),
    (1, 2, 2, 1),
    (1, 3, 3, 1),
    (1, 4, 4, 1),
    (1, 5, 5, 1);