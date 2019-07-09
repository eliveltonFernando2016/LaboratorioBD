CREATE TABLE Questionario_Aluno(
    id_Quest_Aluno        SERIAL,
    ref_Aluno             BIGINT,
    questionario_questoes BIGINT,

    PRIMARY KEY (id_Quest_Aluno),
    FOREIGN KEY (ref_Aluno) REFERENCES Aluno(id_Aluno),
    FOREIGN KEY (questionario_questoes) REFERENCES Questionario_Geral(id)
);