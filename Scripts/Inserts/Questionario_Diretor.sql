INSERT INTO questionario_diretor (ref_diretor, questionario_questoes)
SELECT id_tipo, id FROM questionario_geral WHERE id_tipo IN (SELECT id FROM diretor)