CREATE TABLE Questionario_Diretor(
    id_Quest_Diretor      SERIAL,
    ref_Diretor           BIGINT,
    questionario_questoes BIGINT,

    PRIMARY KEY (id_Quest_Diretor),
    FOREIGN KEY (ref_Diretor) REFERENCES Diretor(id), 
    FOREIGN KEY (questionario_questoes) REFERENCES Questionario_Geral(id)
);