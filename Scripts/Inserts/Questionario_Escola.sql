INSERT INTO questionario_escola (ref_escola, questionario_questoes)
SELECT id_tipo, id FROM questionario_geral WHERE id_tipo IN (SELECT id_escola FROM escola)