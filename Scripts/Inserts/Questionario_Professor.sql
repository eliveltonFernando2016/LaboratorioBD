INSERT INTO questionario_professor (ref_professor, questionario_questoes)
SELECT id_tipo, id FROM questionario_geral WHERE id_tipo IN (SELECT id_professor FROM professor)