CREATE TABLE Questionario_Escola(
    id_Quest_Escola       SERIAL,
    ref_Escola            BIGINT NOT NULL,
    questionario_questoes BIGINT,

    PRIMARY KEY (id_Quest_Escola),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola),
    FOREIGN KEY (questionario_questoes) REFERENCES Questionario_Geral(id)
);