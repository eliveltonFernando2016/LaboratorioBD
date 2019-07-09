CREATE TABLE Questionario_Professor(
    id_Quest_Professor    SERIAL,
    ref_Professor         BIGINT,
    questionario_questoes INTEGER,

    PRIMARY KEY (id_Quest_Professor),
    FOREIGN KEY (ref_Professor) REFERENCES Professor(id_Professor),
    FOREIGN KEY (questionario_questoes) REFERENCES Questionario_Geral(id)
);