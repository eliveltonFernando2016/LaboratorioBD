CREATE TABLE Regiao(
    id  INTEGER NOT NULL,
    nome varchar(500),
    
    PRIMARY KEY (id)
);

CREATE TABLE Estado(
    id  INTEGER NOT NULL,
    nome varchar(500),
    
    PRIMARY KEY (id)
);

CREATE TABLE Aluno(
    id_prova INTEGER NOT NULL,
    regiao INTEGER,
    estado INTEGER,
    municipio INTEGER,
    area INTEGER,
    escola INTEGER,
    dependencia_ADM INTEGER,
    localizacao INTEGER,
    turma INTEGER,
    turno INTEGER,
    serie INTEGER,
    id_aluno INTEGER NOT NULL,
    situacao_Censo INTEGER,
    preechimento_Prova INTEGER,
    presenca_Prova INTEGER,
    caderno INTEGER,
    bloco_1 INTEGER,
    bloco_2 INTEGER,
    resp_Bloco1_LP VARCHAR(13),
    resp_Bloco2_LP VARCHAR(13),
    resp_Bloco1_MT VARCHAR(13),
    resp_Bloco2_MT VARCHAR(13),
    proeficiencia INTEGER,
    prova_Brasil INTEGER,
    estrato_Aneb VARCHAR,
    peso_aluno_LP INTEGER,
    peso_aluno_MT INTEGER,
    proeficiencia_LP INTEGER,
    erro_Padrao_LP INTEGER,
    proeficiencia_LP_SAEB INTEGER,
    erro_Padrao_LP_SAEB INTEGER,
    proeficiencia_MT INTEGER,
    erro_Padrao_MT INTEGER,
    proeficiencia_MT_SAEB INTEGER,
    erro_Padrao_MT_SAEB INTEGER,
    preenchimento_Questionario INTEGER,
    questionario INTEGER,

    PRIMARY KEY (id_prova, id_aluno)
);

CREATE TABLE Questionario(
    id SERIAL,
    nome CHAR(1),
    ununciado VARCHAR,

);