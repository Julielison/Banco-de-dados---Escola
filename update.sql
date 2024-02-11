-- professor atualizando a nota de um aluno
UPDATE "boletim"
SET nota_p3 = 6 
WHERE id_turma = 1
AND id_professor = 1
AND id_matéria = 1
AND id_aluno = 1;