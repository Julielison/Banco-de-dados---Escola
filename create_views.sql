-- criando uma tabela de alunos reprovados
DROP VIEW IF EXISTS alunos_reprovados;
CREATE VIEW alunos_reprovados AS
SELECT nome, sobrenome, letra_da_turma, turno, serie, situação
FROM turma_aluno
JOIN alunos ON alunos.id_matrícula = turma_aluno.id_aluno
GRO

-- criando uma tabela com alunos em curso
DROP VIEW IF EXISTS alunos_em_curso;
CREATE VIEW alunos_em_curso AS
SELECT nome, sobrenome, letra_da_turma, turno, serie, situação
FROM boletim
JOIN alunos ON alunos.id_matrícula = boletim.id_aluno
JOIN turmas ON turmas.id = boletim.id_turma
WHERE situação = 'em curso'
GROUP BY id_aluno
ORDER BY nome;