-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it


-- criando a tabela professores
CREATE TABLE IF NOT EXISTS professores (
    "id" INTEGER PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "sobrenome" TEXT NOT NULL,
    "área_de_formação" TEXT NOT NULL,
    "grau_de_formação" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "telefone" TEXT DEFAULT '-',
    "tipo_de_telefone" DEFAULT '-'
);


-- criando a tabela dos alunos
CREATE TABLE IF NOT EXISTS alunos (
    "id_matrícula" INTEGER PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "sobrenome" TEXT NOT NULL,
    "email" TEXT DEFAULT '-',
    "data_de_nascimento" DATE NOT NULL,
    "telefone" TEXT DEFAULT '-',
    "tipo_de_telefone" TEXT DEFAULT '-'
);


-- endereços dos alunos
CREATE TABLE IF NOT EXISTS enderecos_alunos (
    "id_aluno" INTEGER,
    "bairro" TEXT DEFAULT '-',
    "rua" TEXT DEFAULT '-',
    "numero" INTEGER DEFAULT '-',
    "complemento" TEXT DEFAULT '-',
    FOREIGN KEY ("id_aluno") REFERENCES alunos("id_matrícula")
);


-- endereços dos professores
CREATE TABLE IF NOT EXISTS enderecos_professores (
    "id_professor" INTEGER,
    "bairro" TEXT DEFAULT '-',
    "rua" TEXT DEFAULT '-',
    "numero" INTEGER DEFAULT '-',
    "complemento" TEXT DEFAULT '-',
    FOREIGN KEY ("id_professor") REFERENCES professores("id")
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

-- alunos por turma e sua situação
CREATE TABLE IF NOT EXISTS alunos_por_turma (
    "id_turma" INTEGER NOT NULL,
    "id_aluno" INTEGER NOT NULL,
    "situação" TEXT NOT NULL DEFAULT 'em curso' CHECK(
        "situação" IN ('em curso', 'aprovado', 'reprovado')),
    UNIQUE ("id_aluno", "id_turma"),
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
    "id_turma" INTEGER NOT NULL,
    "id_professor" INTEGER NOT NULL,
    "faltas" INTEGER DEFAULT 0,
    "situação" TEXT DEFAULT 'em curso' CHECK(
        "situação" IN ('aprovado', 'reprovado', 'em curso')),
    UNIQUE (id_aluno, id_turma, id_matéria),
    FOREIGN KEY ("id_aluno") REFERENCES alunos("id_matrícula"),
    FOREIGN KEY ("id_matéria") REFERENCES matérias("id"),
    FOREIGN KEY ("id_turma") REFERENCES turmas("id"),
    FOREIGN KEY ("id_professor") REFERENCES professores("id")
);


-- exibindo todos os alunos da turma 1
CREATE VIEW alunos_turma_1 AS
SELECT nome, sobrenome
FROM alunos AS a
JOIN alunos_por_turma AS b ON a.id_matrícula = b.id_aluno
WHERE id_turma = 1;