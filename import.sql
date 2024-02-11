DELETE FROM professores;

DROP TABLE IF EXISTS temp_prof;
.import --csv professores.csv temp_prof

INSERT INTO professores ("nome", "sobrenome", "grau_formacao", "email", "telefone", "tipo_de_telefone", "bairro", "rua","n°", "complemento")
SELECT "nome", "sobrenome", "grau_formacao", "email", "telefone", "tipo_de_telefone", "bairro", "rua", "n°", "complemento" FROM "temp_prof";