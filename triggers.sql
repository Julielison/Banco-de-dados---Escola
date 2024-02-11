-- Criando o trigger para atualizar a situação do boletim
CREATE TRIGGER IF NOT EXISTS atualizar_situacao 
AFTER UPDATE OF nota_p4 ON boletim
WHEN NEW.nota_p4 IS NOT NULL
BEGIN
    UPDATE boletim
    SET situação = CASE 
                    WHEN (NEW.nota_p1 + NEW.nota_p2 + NEW.nota_p3 + NEW.nota_p4) / 4 >= 6 THEN 'aprovado'
                    ELSE 'reprovado'
                  END
    WHERE rowid = NEW.rowid;
END;