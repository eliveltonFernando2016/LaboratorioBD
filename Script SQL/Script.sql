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

CREATE TABLE Questionario_Geral(
    id          SERIAL,
    id_tipo     BIGINT,
    resp_Q001   VARCHAR(1),
    resp_Q002   VARCHAR(1),
    resp_Q003   VARCHAR(1),
    resp_Q004   VARCHAR(1),
    resp_Q005   VARCHAR(1),
    resp_Q006   VARCHAR(1),
    resp_Q007   VARCHAR(1),
    resp_Q008   VARCHAR(1),
    resp_Q009   VARCHAR(1),
    resp_Q010   VARCHAR(1),
    resp_Q011   VARCHAR(1),
    resp_Q012   VARCHAR(1),
    resp_Q013   VARCHAR(1),
    resp_Q014   VARCHAR(1),
    resp_Q015   VARCHAR(1),
    resp_Q016   VARCHAR(1),
    resp_Q017   VARCHAR(1),
    resp_Q018   VARCHAR(1),
    resp_Q019   VARCHAR(1),
    resp_Q020   VARCHAR(1),
    resp_Q021   VARCHAR(1),
    resp_Q022   VARCHAR(1),
    resp_Q023   VARCHAR(1),
    resp_Q024   VARCHAR(1),
    resp_Q025   VARCHAR(1),
    resp_Q026   VARCHAR(1),
    resp_Q027   VARCHAR(1),
    resp_Q028   VARCHAR(1),
    resp_Q029   VARCHAR(1),
    resp_Q030   VARCHAR(1),
    resp_Q031   VARCHAR(1),
    resp_Q032   VARCHAR(1),
    resp_Q033   VARCHAR(1),
    resp_Q034   VARCHAR(1),
    resp_Q035   VARCHAR(1),
    resp_Q036   VARCHAR(1),
    resp_Q037   VARCHAR(1),
    resp_Q038   VARCHAR(1),
    resp_Q039   VARCHAR(1),
    resp_Q040   VARCHAR(1),
    resp_Q041   VARCHAR(1),
    resp_Q042   VARCHAR(1),
    resp_Q043   VARCHAR(1),
    resp_Q044   VARCHAR(1),
    resp_Q045   VARCHAR(1),
    resp_Q046   VARCHAR(1),
    resp_Q047   VARCHAR(1),
    resp_Q048   VARCHAR(1),
    resp_Q049   VARCHAR(1),
    resp_Q050   VARCHAR(1),
    resp_Q051   VARCHAR(1),
    resp_Q052   VARCHAR(1),
    resp_Q053   VARCHAR(1),
    resp_Q054   VARCHAR(1),
    resp_Q055   VARCHAR(1),
    resp_Q056   VARCHAR(1),
    resp_Q057   VARCHAR(1),
    resp_Q058   VARCHAR(1),
    resp_Q059   VARCHAR(1),
    resp_Q060   VARCHAR(1),
    resp_Q061   VARCHAR(1),
    resp_Q062   VARCHAR(1),
    resp_Q063   VARCHAR(1),
    resp_Q064   VARCHAR(1),
    resp_Q065   VARCHAR(1),
    resp_Q066   VARCHAR(1),
    resp_Q067   VARCHAR(1),
    resp_Q068   VARCHAR(1),
    resp_Q069   VARCHAR(1),
    resp_Q070   VARCHAR(1),
    resp_Q071   VARCHAR(1),
    resp_Q072   VARCHAR(1),
    resp_Q073   VARCHAR(1),
    resp_Q074   VARCHAR(1),
    resp_Q075   VARCHAR(1),
    resp_Q076   VARCHAR(1),
    resp_Q077   VARCHAR(1),
    resp_Q078   VARCHAR(1),
    resp_Q079   VARCHAR(1),
    resp_Q080   VARCHAR(1),
    resp_Q081   VARCHAR(1),
    resp_Q082   VARCHAR(1),
    resp_Q083   VARCHAR(1),
    resp_Q084   VARCHAR(1),
    resp_Q085   VARCHAR(1),
    resp_Q086   VARCHAR(1),
    resp_Q087   VARCHAR(1),
    resp_Q088   VARCHAR(1),
    resp_Q089   VARCHAR(1),
    resp_Q090   VARCHAR(1),
    resp_Q091   VARCHAR(1),
    resp_Q092   VARCHAR(1),
    resp_Q093   VARCHAR(1),
    resp_Q094   VARCHAR(1),
    resp_Q095   VARCHAR(1),
    resp_Q096   VARCHAR(1),
    resp_Q097   VARCHAR(1),
    resp_Q098   VARCHAR(1),
    resp_Q099   VARCHAR(1),
    resp_Q100   VARCHAR(1),
    resp_Q101   VARCHAR(1),
    resp_Q102   VARCHAR(1),
    resp_Q103   VARCHAR(1),
    resp_Q104   VARCHAR(1),
    resp_Q105   VARCHAR(1),
    resp_Q106   VARCHAR(1),
    resp_Q107   VARCHAR(1),
    resp_Q108   VARCHAR(1),
    resp_Q109   VARCHAR(1),
    resp_Q110   VARCHAR(1),
    resp_Q111   VARCHAR(1),
    resp_Q112   VARCHAR(1),
    resp_Q113   VARCHAR(1),
    resp_Q114   VARCHAR(1),
    resp_Q115   VARCHAR(1),
    resp_Q116   VARCHAR(1),
    resp_Q117   VARCHAR(1),
    resp_Q118   VARCHAR(1),
    resp_Q119   VARCHAR(1),
    resp_Q120   VARCHAR(1),
    resp_Q121   VARCHAR(1),
    resp_Q122   VARCHAR(1),
    resp_Q123   VARCHAR(1),
    resp_Q124   VARCHAR(1),
    resp_Q125   VARCHAR(1),
    
    PRIMARY KEY (id)
);

CREATE TABLE Questionario_Escola(
    id_Quest_Escola       SERIAL,
    ref_Escola            BIGINT NOT NULL,
    questionario_questoes BIGINT,

    PRIMARY KEY (id_Quest_Escola),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola),
    FOREIGN KEY (questionario_questoes) REFERENCES Questionario_Geral(id)
);

CREATE TABLE Questionario_Diretor(
    id_Quest_Diretor      SERIAL,
    ref_Diretor           BIGINT,
    questionario_questoes BIGINT,

    PRIMARY KEY (id_Quest_Diretor),
    FOREIGN KEY (ref_Diretor) REFERENCES Diretor(id), 
    FOREIGN KEY (questionario_questoes) REFERENCES Questionario_Geral(id)
);

CREATE TABLE Questionario_Professor(
    id_Quest_Professor    SERIAL,
    ref_Professor         BIGINT,
    questionario_questoes INTEGER,

    PRIMARY KEY (id_Quest_Professor),
    FOREIGN KEY (ref_Professor) REFERENCES Professor(id_Professor),
    FOREIGN KEY (questionario_questoes) REFERENCES Questionario_Geral(id)
);

CREATE TABLE Questionario_Aluno(
    id_Quest_Aluno        SERIAL,
    ref_Aluno             BIGINT,
    questionario_questoes BIGINT,

    PRIMARY KEY (id_Quest_Aluno),
    FOREIGN KEY (ref_Aluno) REFERENCES Aluno(id_Aluno),
    FOREIGN KEY (questionario_questoes) REFERENCES Questionario_Geral(id)
);
