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
    id_Municipio    SERIAL,
    cod_Municipio   BIGINT UNIQUE,
    ref_Estado      INTEGER NOT NULL,

    PRIMARY KEY (cod_Municipio, ref_Estado),
    FOREIGN KEY (ref_Estado) REFERENCES Estado(id_Estado)
);

CREATE TABLE Area(
    id_Area     INTEGER NOT NULL,
    codifo      VARCHAR(100),
    
    PRIMARY KEY (id_Area)  
);

CREATE TABLE Localizacao(
    id_localizacao      INTEGER NOT NULL,
    nome_localizacao    VARCHAR(100),

    PRIMARY KEY (id_localizacao)
);

CREATE TABLE nivel_socio_economico(
    id_nivel    SERIAL,
    grupo       VARCHAR(50)  UNIQUE,
    nome_nivel  VARCHAR(100) UNIQUE,

    PRIMARY KEY (id_nivel)
);

CREATE TABLE Dependencia_Adm(
    id_dependencia   INTEGER NOT NULL,
    nome_dependencia VARCHAR(100),

    PRIMARY KEY (id_dependencia)
);

CREATE TABLE serie(
    id_serie    SERIAL,
    cod_serie   INTEGER UNIQUE,
    nome_serie  VARCHAR(100),

    PRIMARY KEY (id_serie)
);

CREATE TABLE tipo_prova(
    id_prova   SERIAL,
    descricao  VARCHAR(100) UNIQUE,

    PRIMARY KEY (id_prova)
);

CREATE TABLE disciplina(
    id_disciplina   SERIAL,
    cod_disciplina  CHAR(2) UNIQUE,
    nome_disciplina VARCHAR(100),

    PRIMARY KEY (id_disciplina)
);

CREATE TABLE turno(
    id_turno      INTEGER NOT NULL,
    nome_turno    VARCHAR(20),

    PRIMARY KEY (id_turno)
);

CREATE TABLE preenchimento_questionario(
    id_preenchimento   SERIAL,
    cod_preenchimento  BOOLEAN UNIQUE,
    nome_preenchimento VARCHAR(100),

    PRIMARY KEY (id_preenchimento)
);

CREATE TABLE Gabarito(
    id_Gabarito     SERIAL,
    cod_Gabarito    VARCHAR(1) NOT NULL,

    PRIMARY KEY (cod_Gabarito)
);

CREATE TABLE Escola(
    prova_Brasil                INTEGER,
    ref_Estado                  INTEGER,
    ref_Municipio               BIGINT,
    id_Escola                   BIGINT NOT NULL,
    ref_dependencia_ADM         INTEGER,
    ref_localizacao             INTEGER,
    formacao_Docente_Inicial    FLOAT,
    formacao_Docente_Final      FLOAT,
    formacao_Docente_Medio      FLOAT,
    ref_nivel_Socio_Economico   VARCHAR(100),
    matriculados_Censo_5EF      INTEGER,
    presentes_5EF               INTEGER,
    taxa_Participacao_5EF       FLOAT,
    Nivel_0_LP5                 FLOAT,
    Nivel_1_LP5                 FLOAT,
    Nivel_2_LP5                 FLOAT,
    Nivel_3_LP5                 FLOAT,
    Nivel_4_LP5                 FLOAT,
    Nivel_5_LP5                 FLOAT,
    Nivel_6_LP5                 FLOAT,
    Nivel_7_LP5                 FLOAT,
    Nivel_8_LP5                 FLOAT,
    Nivel_9_LP5                 FLOAT,
    Nivel_0_MT5                 FLOAT,
    Nivel_1_MT5                 FLOAT,
    Nivel_2_MT5                 FLOAT,
    Nivel_3_MT5                 FLOAT,
    Nivel_4_MT5                 FLOAT,
    Nivel_5_MT5                 FLOAT,
    Nivel_6_MT5                 FLOAT,
    Nivel_7_MT5                 FLOAT,
    Nivel_8_MT5                 FLOAT,
    Nivel_9_MT5                 FLOAT,
    Nivel_10_MT5                FLOAT,
    Matriculados_Censo_9EF      INTEGER,
    presentes_9EF               INTEGER,
    taxa_Participacao_9EF       FLOAT,
    nivel_0_LP9                 FLOAT,
    nivel_1_LP9                 FLOAT,
    nivel_2_LP9                 FLOAT,
    nivel_3_LP9                 FLOAT,
    nivel_4_LP9                 FLOAT,
    nivel_5_LP9                 FLOAT,
    nivel_6_LP9                 FLOAT,
    nivel_7_LP9                 FLOAT,
    nivel_8_LP9                 FLOAT,
    nivel_0_MT9                 FLOAT,
    nivel_1_MT9                 FLOAT,
    nivel_2_MT9                 FLOAT,
    nivel_3_MT9                 FLOAT,
    nivel_4_MT9                 FLOAT,
    nivel_5_MT9                 FLOAT,
    nivel_6_MT9                 FLOAT,
    nivel_7_MT9                 FLOAT,
    nivel_8_MT9                 FLOAT,
    nivel_9_MT9                 FLOAT,
    matriculados_Censo_3EM      INTEGER,
    presentes_3EM               INTEGER,
    taxa_Participacao_3EM       FLOAT,
    nivel_0_LP3                 FLOAT,
    nivel_1_LP3                 FLOAT,
    nivel_2_LP3                 FLOAT,
    nivel_3_LP3                 FLOAT,
    nivel_4_LP3                 FLOAT,
    nivel_5_LP3                 FLOAT,
    nivel_6_LP3                 FLOAT,
    nivel_7_LP3                 FLOAT,
    nivel_8_LP3                 FLOAT,
    nivel_0_MT3                 FLOAT,
    nivel_1_MT3                 FLOAT,
    nivel_2_MT3                 FLOAT,
    nivel_3_MT3                 FLOAT,
    nivel_4_MT3                 FLOAT,
    nivel_5_MT3                 FLOAT,
    nivel_6_MT3                 FLOAT,
    nivel_7_MT3                 FLOAT,
    nivel_8_MT3                 FLOAT,
    nivel_9_MT3                 FLOAT,
    nivel_10_MT3                FLOAT,
    media_5EF_LP                FLOAT,
    media_5EF_MT                FLOAT,
    media_9EF_LP                FLOAT,
    media_9EF_MT                FLOAT,
    media_3EM_LP                FLOAT,
    media_3EM_MT                FLOAT,
    ref_preenchimento_Questionario  BOOLEAN,

    PRIMARY KEY (id_Escola),
    FOREIGN KEY (ref_Municipio, ref_Estado)  REFERENCES Municipio(cod_Municipio, ref_Estado),
    FOREIGN KEY (ref_Estado)                 REFERENCES Estado(id_Estado),
    FOREIGN KEY (ref_dependencia_ADM)            REFERENCES dependencia_adm(id_dependencia),
    FOREIGN KEY (ref_localizacao)                REFERENCES localizacao(id_localizacao),
    FOREIGN KEY (ref_nivel_Socio_Economico)      REFERENCES nivel_socio_economico(grupo),
    FOREIGN KEY (ref_preenchimento_Questionario) REFERENCES preenchimento_questionario(cod_preenchimento)
);

CREATE TABLE Diretor(
    id                          SERIAL,
    prova_Brasil                INTEGER,
    ref_Estado                  INTEGER,
    ref_Municipio               INTEGER,
    ref_Escola                  INTEGER,
    ref_dependencia_ADM             INTEGER,
    ref_localizacao                 INTEGER,
    ref_preenchimento_Questionario  BOOLEAN,

    PRIMARY KEY (id),
    FOREIGN KEY (ref_Municipio) REFERENCES Municipio(cod_Municipio),
    FOREIGN KEY (ref_Estado) REFERENCES Estado(id_Estado),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola),
    FOREIGN KEY (ref_dependencia_ADM) REFERENCES dependencia_adm(id_dependencia),
    FOREIGN KEY (ref_Localizacao) REFERENCES localizacao(id_Localizacao),
    FOREIGN KEY (ref_preenchimento_Questionario) REFERENCES Preenchimento_Questionario(cod_preenchimento)
);

CREATE TABLE Professor(
    prova_Brasil                INTEGER,
    ref_Estado                  INTEGER,
    ref_Municipio               INTEGER,
    ref_Escola                  INTEGER,
    ref_dependencia_ADM         INTEGER,
    ref_localizacao                 INTEGER,
    ref_turma                       INTEGER,
    id_Professor                    INTEGER NOT NULL,
    ref_serie                       INTEGER,
    ref_preenchimento_Questionario  BOOLEAN,

    PRIMARY KEY (id_Professor),
    FOREIGN KEY (ref_Municipio, ref_Estado)         REFERENCES Municipio(cod_Municipio, ref_Estado),
    FOREIGN KEY (ref_Estado)                        REFERENCES Estado(id_Estado),
    FOREIGN KEY (ref_dependencia_ADM)               REFERENCES dependencia_adm(id_dependencia),
    FOREIGN KEY (ref_localizacao)                   REFERENCES localizacao(id_localizacao),
    FOREIGN KEY (ref_serie)                         REFERENCES serie(cod_serie),
    FOREIGN KEY (ref_preenchimento_Questionario)    REFERENCES preenchimento_questionario(cod_preenchimento),
    FOREIGN KEY (ref_Escola)                        REFERENCES Escola(id_Escola)
);

CREATE TABLE Aluno(
    prova_Brasil                INTEGER,
    ref_Regiao                  INTEGER,
    ref_Estado                  INTEGER,
    ref_Municipio               BIGINT,
    ref_Area                    INTEGER,
    ref_Escola                  BIGINT,
    ref_dependencia_ADM         INTEGER,
    ref_localizacao             INTEGER,
    turma                       INTEGER,
    ref_Turno                   INTEGER,
    ref_Serie                   INTEGER,
    id_Aluno                    BIGINT NOT NULL,
    situacao_Censo              INTEGER,
    preechimento_Prova          INTEGER,
    presenca_Prova              INTEGER,
    caderno                     INTEGER,
    bloco_1                     FLOAT,
    bloco_2                     FLOAT,
    resp_Bloco1_LP              VARCHAR(13),
    resp_Bloco2_LP              VARCHAR(13),
    resp_Bloco1_MT              VARCHAR(13),
    resp_Bloco2_MT              VARCHAR(13),
    proeficiencia               INTEGER,
    in_Prova_Brasil             INTEGER,
    estrato_Aneb                VARCHAR(14),
    peso_Aluno_LP               FLOAT,
    peso_Aluno_MT               FLOAT,
    proeficiencia_LP            FLOAT,
    erro_Padrao_LP              FLOAT,
    proeficiencia_LP_SAEB       FLOAT,
    erro_Padrao_LP_SAEB         FLOAT,
    proeficiencia_MT            FLOAT,
    erro_Padrao_MT              FLOAT,
    proeficiencia_MT_SAEB       FLOAT,
    erro_Padrao_MT_SAEB         FLOAT,
    preenchimento_Questionario  BOOLEAN,

    PRIMARY KEY (id_Aluno),
    FOREIGN KEY (ref_Municipio) REFERENCES Municipio(cod_Municipio),
    FOREIGN KEY (ref_Estado) REFERENCES Estado(id_Estado),
    FOREIGN KEY (ref_Regiao) REFERENCES Regiao(id_Regiao),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola),
    FOREIGN KEY (ref_Area) REFERENCES Area(id_Area),
    FOREIGN KEY (ref_Turno) REFERENCES turno(id_Turno),
    FOREIGN KEY (ref_Serie) REFERENCES serie(id_Serie),
    FOREIGN KEY (ref_Localizacao) REFERENCES localizacao(id_Localizacao),
    FOREIGN KEY (ref_dependencia_ADM) REFERENCES dependencia_adm(id_dependencia)
);

CREATE TABLE Item(
    serie                   INTEGER,
    ref_tipo_Prova          VARCHAR(30) NOT NULL,
    ref_disciplina          VARCHAR(2),
    serie_Item              INTEGER NOT NULL,
    bloco                   INTEGER NOT NULL,
    posicao                 INTEGER NOT NULL,
    id_Item                 INTEGER NOT NULL,
    descritor_Habilidade    INTEGER,
    gabarito                VARCHAR(1),

    PRIMARY KEY (serie, ref_tipo_Prova, serie_Item, bloco, posicao, id_Item),
    FOREIGN KEY (ref_tipo_Prova) REFERENCES tipo_prova(descricao),
    FOREIGN KEY (ref_disciplina) REFERENCES disciplina(cod_disciplina)
);