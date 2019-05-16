CREATE TABLE Regiao(
    id_Regiao   INTEGER NOT NULL,
    nome        VARCHAR(500),

    PRIMARY KEY (id_Regiao)
);

CREATE TABLE Estado(
    id_Estado   INTEGER NOT NULL,
    nome        VARCHAR(500),
    ref_Regiao  INTEGER,

    PRIMARY KEY (id_Estado),
    FOREIGN KEY (ref_Regiao) REFERENCES Regiao(id_Regiao)
);

CREATE TABLE Municipio(
    id_Municipio    INTEGER NOT NULL,
    nome            VARCHAR(500),
    ref_Regiao      INTEGER,
    ref_Estado      INTEGER,

    PRIMARY KEY (id_Municipio),
    FOREIGN KEY (ref_Regiao, ref_Estado) REFERENCES Estado(ref_Regiao, id_Estado)
);

CREATE TABLE Escola(
    id_Prova        INTEGER NOT NULL,
    ref_Estado      INTEGER,
    ref_municipio   INTEGER,
    ref_Escola      INTEGER,
    dependencia_ADM     INTEGER,
    localizacao         INTEGER,
    formacao_Docente_Inicial    FLOAT,
    formacao_Docente_Final      FLOAT,
    formacao_Docente_Medio      FLOAT,
    nivel_Socio_Economico       VARCHAR(15),
    matriculados_Censo_5EF      INTEGER,
    presentes_5EF               INTEGER,
    taxa_Participacao_5EF       FLOAT,
    Nivel_0_LP5     INTEGER,
    Nivel_1_LP5     INTEGER,
    Nivel_2_LP5     INTEGER,
    Nivel_3_LP5     INTEGER,
    Nivel_4_LP5     INTEGER,
    Nivel_5_LP5     INTEGER,
    Nivel_6_LP5     INTEGER,
    Nivel_7_LP5     INTEGER,
    Nivel_8_LP5     INTEGER,
    Nivel_9_LP5     INTEGER,
    Nivel_0_MT5     INTEGER,
    Nivel_1_MT5     INTEGER,
    Nivel_2_MT5     INTEGER,
    Nivel_3_MT5     INTEGER,
    Nivel_4_MT5     INTEGER,
    Nivel_5_MT5     INTEGER,
    Nivel_6_MT5     INTEGER,
    Nivel_7_MT5     INTEGER,
    Nivel_8_MT5     INTEGER,
    Nivel_9_MT5     INTEGER,
    Nivel_10_MT5    INTEGER,
    Matriculados_Censo_9EF  INTEGER,
    presentes_9EF   INTEGER,
    taxa_Participacao_9EF   INTEGER,
    nivel_0_LP9     INTEGER,
    nivel_1_LP9     INTEGER,
    nivel_2_LP9     INTEGER,
    nivel_3_LP9     INTEGER,
    nivel_4_LP9     INTEGER,
    nivel_5_LP9     INTEGER,
    nivel_6_LP9     INTEGER,
    nivel_7_LP9     INTEGER,
    nivel_8_LP9     INTEGER,
    nivel_0_MT9     INTEGER,
    nivel_1_MT9     INTEGER,
    nivel_2_MT9     INTEGER,
    nivel_3_MT9     INTEGER,
    nivel_4_MT9     INTEGER,
    nivel_5_MT9     INTEGER,
    nivel_6_MT9     INTEGER,
    nivel_7_MT9     INTEGER,
    nivel_8_MT9     INTEGER,
    nivel_9_MT9     INTEGER,
    matriculados_Censo_3EM      INTEGER,
    presentes_3EM       INTEGER,
    taxa_Participacao_3EM       INTEGER,
    nivel_0_LP3     INTEGER,
    nivel_1_LP3     INTEGER,
    nivel_2_LP3     INTEGER,
    nivel_3_LP3     INTEGER,
    nivel_4_LP3     INTEGER,
    nivel_5_LP3     INTEGER,
    nivel_6_LP3     INTEGER,
    nivel_7_LP3     INTEGER,
    nivel_8_LP3     INTEGER,
    nivel_0_MT3     INTEGER,
    nivel_1_MT3     INTEGER,
    nivel_2_MT3     INTEGER,
    nivel_3_MT3     INTEGER,
    nivel_4_MT3     INTEGER,
    nivel_5_MT3     INTEGER,
    nivel_6_MT3     INTEGER,
    nivel_7_MT3     INTEGER,
    nivel_8_MT3     INTEGER,
    nivel_9_MT3     INTEGER,
    nivel_10_MT3    INTEGER,
    media_5EF_LP    INTEGER,
    media_5EF_MT    INTEGER,
    media_9EF_LP    INTEGER,
    media_9EF_MT    INTEGER,
    media_3EM_LP    INTEGER,
    media_3EM_MT    INTEGER,
    preenchimento_Questionario      INTEGER,


    PRIMARY KEY ()
);

CREATE TABLE Diretor(
    id_Prova        INTEGER NOT NULL,
    ref_Estado      INTEGER,
    municipio       INTEGER,
    ref_escola      INTEGER,
    dependencia_ADM     INTEGER,
    localizacao         INTEGER,
    preenchimento_Questionario  INTEGER,
    questionario    INTEGER,

    PRIMARY KEY (id_Prova, ref_Estado, municipio, ref_Escola)
);

CREATE TABLE Aluno(
    id_Prova    INTEGER NOT NULL,
    ref_Regiao      INTEGER,
    ref_Estado      INTEGER,
    municipio   INTEGER,
    area        INTEGER,
    ref_Escola      INTEGER,
    dependencia_ADM INTEGER,
    localizacao INTEGER,
    turma       INTEGER,
    turno       INTEGER,
    serie       INTEGER,
    id_aluno    INTEGER NOT NULL,
    situacao_Censo      INTEGER,
    preechimento_Prova  INTEGER,
    presenca_Prova      INTEGER,
    caderno     INTEGER,
    bloco_1     INTEGER,
    bloco_2     INTEGER,
    resp_Bloco1_LP  VARCHAR(13),
    resp_Bloco2_LP  VARCHAR(13),
    resp_Bloco1_MT  VARCHAR(13),
    resp_Bloco2_MT  VARCHAR(13),
    proeficiencia   INTEGER,
    in_Prova_Brasil    INTEGER,
    estrato_Aneb    VARCHAR,
    peso_Aluno_LP   INTEGER,
    peso_Aluno_MT   INTEGER,
    proeficiencia_LP    INTEGER,
    erro_Padrao_LP      INTEGER,
    proeficiencia_LP_SAEB   INTEGER,
    erro_Padrao_LP_SAEB     INTEGER,
    proeficiencia_MT    INTEGER,
    erro_Padrao_MT      INTEGER,
    proeficiencia_MT_SAEB   INTEGER,
    erro_Padrao_MT_SAEB     INTEGER,
    preenchimento_Questionario  INTEGER,
    ref_Questionario    INTEGER,


    
    PRIMARY KEY (id_prova, id_aluno)
);



CREATE TABLE Questionario(
    id_Questionario     SERIAL,
    nome                VARCHAR(1),
    enunciado           VARCHAR,
    /*nao sei*/
);


CREATE TABLE Questionario_Social_Escola(
    id_Quest_Escola     SERIAL,
    TX_RESP_Q007
    TX_RESP_Q008
    TX_RESP_Q009
    TX_RESP_Q010
    TX_RESP_Q011
    TX_RESP_Q012
    TX_RESP_Q013
    TX_RESP_Q014
    TX_RESP_Q015
    TX_RESP_Q016
    TX_RESP_Q017
    TX_RESP_Q018
    TX_RESP_Q019
    TX_RESP_Q020
    TX_RESP_Q021
    TX_RESP_Q022
    TX_RESP_Q023
    TX_RESP_Q024
    TX_RESP_Q025
    TX_RESP_Q026
    TX_RESP_Q027
    TX_RESP_Q028
    TX_RESP_Q029
    TX_RESP_Q030
    TX_RESP_Q031
    TX_RESP_Q032
    TX_RESP_Q033
    TX_RESP_Q034
    TX_RESP_Q035
    TX_RESP_Q036
    TX_RESP_Q037
    TX_RESP_Q038
    TX_RESP_Q039
    TX_RESP_Q040
    TX_RESP_Q041
    TX_RESP_Q042
    TX_RESP_Q043
    TX_RESP_Q044
    TX_RESP_Q045
    TX_RESP_Q046
    TX_RESP_Q047
    TX_RESP_Q048
    TX_RESP_Q049
    TX_RESP_Q050
    TX_RESP_Q051
    TX_RESP_Q052
    TX_RESP_Q053
    TX_RESP_Q054
    TX_RESP_Q055
    TX_RESP_Q056
    TX_RESP_Q057
    TX_RESP_Q058
    TX_RESP_Q059
    TX_RESP_Q060
    TX_RESP_Q061
    TX_RESP_Q062
    TX_RESP_Q063
    TX_RESP_Q064
    TX_RESP_Q065
    TX_RESP_Q066
    TX_RESP_Q067
    TX_RESP_Q068
    TX_RESP_Q069
    TX_RESP_Q070
    TX_RESP_Q071
    TX_RESP_Q072
    TX_RESP_Q073
    TX_RESP_Q074
);