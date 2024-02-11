-- DROP VIEW IF EXISTS Boletim_de_Maria_Silva;

-- exibindo o boletim de Maria Silva
-- CREATE VIEW IF NOT EXISTS Boletim_de_Maria_Silva AS
-- SELECT matérias.nome AS matérias, nota_p1, nota_p2, nota_p3, nota_p4, faltas
-- FROM boletim
-- JOIN matérias ON matérias.id = boletim.id_matéria
-- WHERE id_aluno = (
--     SELECT id_matrícula
--     FROM alunos
--     WHERE nome = 'Maria'
--     AND sobrenome = 'Silva'
-- );

EXPLAIN QUERY PLAN
SELECT matérias.nome AS matérias, nota_p1, nota_p2, nota_p3, nota_p4, faltas
FROM boletim
JOIN matérias ON matérias.id = boletim.id_matéria
WHERE id_aluno = (
    SELECT id_matrícula
    FROM alunos
    WHERE nome = 'Maria'
    AND sobrenome = 'Silva');