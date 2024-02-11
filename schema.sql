-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

-- excluindo as tabelas caso existam
DROP TABLE IF EXISTS professores;
DROP TABLE IF EXISTS alunos;
DROP TABLE IF EXISTS matérias;
DROP TABLE IF EXISTS turmas;
DROP TABLE IF EXISTS turma_professor;
DROP TABLE IF EXISTS turma_aluno;
DROP TABLE IF EXISTS boletim;


-- criando a tabela professores
CREATE TABLE IF NOT EXISTS professores (
    "id" INTEGER PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "sobrenome" TEXT NOT NULL,
    "grau_formacao" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "telefone" TEXT DEFAULT '-',
    "tipo_de_telefone" DEFAULT '-',
    "bairro" TEXT DEFAULT '-',
    "rua" TEXT DEFAULT '-',
    "n°" INTEGER DEFAULT '-',
    "complemento" TEXT DEFAULT '-'
);


-- criando a tabela dos alunos
-- ok
CREATE TABLE IF NOT EXISTS alunos (
    "id_matrícula" INTEGER PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "sobrenome" TEXT NOT NULL,
    "email" TEXT DEFAULT '-',
    "data_de_nascimento" DATE NOT NULL,
    "telefone" TEXT DEFAULT '-',
    "tipo_de_telefone" TEXT DEFAULT '-',
    "bairro" TEXT DEFAULT '-',
    "rua" TEXT DEFAULT '-',
    "n°" INTEGER DEFAULT '-',
    "complemento" TEXT DEFAULT '-'
);


-- criando a tabela matérias
CREATE TABLE IF NOT EXISTS matérias (
    "id" INTEGER PRIMARY KEY,
    "nome" TEXT NOT NULL CHECK(
        "nome" IN ('Matemática', 'Física', 'Química', 'Biologia', 'História', 'Inglês', 'Espanhol', 'Português', 'Geografia', 'Educação Física'))
);


-- criando a tabela turmas
CREATE TABLE IF NOT EXISTS turmas (
    "id" INTEGER PRIMARY KEY,
    "letra_da_turma" TEXT NOT NULL CHECK(letra_da_turma IN ('A', 'B', 'C', 'D', 'E')),
    "ano_letivo" INTEGER NOT NULL,
    "turno" TEXT NOT NULL CHECK(
        "turno" IN ('MANHÃ', 'TARDE', 'NOITE', 'INTEGRAL')),
    "serie" TEXT NOT NULL CHECK(
        "serie" IN ('1º ano', '2º ano', '3º ano', '4º ano', '5º ano', '6º ano', '7º ano', '8º ano', '9º ano')
    ),
    UNIQUE ("letra_da_turma", "ano_letivo", "turno", "serie")
);



-- relacionando os alunos com as turmas
CREATE TABLE IF NOT EXISTS turma_aluno (
    "id_turma" INTEGER,
    "id_aluno" INTEGER,
    "situação" TEXT DEFAULT 'em curso' CHECK(
        "situação" IN ('aprovado', 'reprovado', 'em curso')),
    UNIQUE ("id_turma", "id_aluno"),
    FOREIGN KEY ("id_turma") REFERENCES turmas("id"),
    FOREIGN KEY ("id_aluno") REFERENCES alunos("id_matrícula")
);


-- criando a tabela boletim
CREATE TABLE IF NOT EXISTS boletim (
    "id_aluno" INTEGER NOT NULL,
    "id_matéria" INTEGER NOT NULL,
    "nota_p1" REAL DEFAULT '-',
    "nota_p2" REAL DEFAULT '-',
    "nota_p3" REAL DEFAULT '-',
    "nota_p4" REAL DEFAULT '-',
    "id_professor" INTEGER NOT NULL,
    "id_turma" INTEGER NOT NULL,
    "faltas" INTEGER DEFAULT 0,
    "situação" TEXT DEFAULT 'em curso' CHECK(
        "situação" IN ('aprovado', 'reprovado', 'em curso')),
    UNIQUE (id_aluno, id_turma, id_matéria, id_professor),
    FOREIGN KEY ("id_aluno") REFERENCES alunos("id_matrícula"),
    FOREIGN KEY ("id_matéria") REFERENCES matérias("id"),
    FOREIGN KEY ("id_turma") REFERENCES turmas("id")
    FOREIGN KEY ("id_professor") REFERENCES professores("id")
);