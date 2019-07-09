INSERT INTO questionario_aluno (ref_aluno, questionario_questoes)
SELECT id_tipo, id FROM questionario_geral WHERE id_tipo IN (SELECT id_aluno FROM aluno)