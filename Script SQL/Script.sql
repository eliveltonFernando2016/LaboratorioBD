/* 
  Universidade Tecnológica Federal do Paraná - CM
  Laboratorio de Banco de Dados
  SAEB 2017
*/

/*  COMENTARIOS
    Ainda nao executei, pode ter mt erro.
    Entao, lembra aquele atributo PROVA_BRASIL? se voce ver os dados, é apenas o ano
    por isso removi das primary key. 
    Outra coisa, eh que, pelo que vi, tem uma lista de perguntas para cada entidade
    ESCOLA, PROFESSOR, ALUNO, DIRETOR. Entao crie as tabelas separadas só referenciando as chaves 
    (mas podem estar invertidas, tem colocar no lado que tem n se for uma relacao 1:n).
    Eu acabei colocando Municipio, parece inutil mas sei lah, se fezimos para estado pq nao pra municipio?
    talvez melhore nas consultas. Coloquei como entidades fracas, Regiao <- Estado <- Municipio (faz sentido?
    nao sei).
    E por ultimo, me ajuda a entender q porra eh a tabela ITEM, ela nao liga com nada????????????
*/

CREATE TABLE Regiao(
    id_Regiao   INTEGER NOT NULL,
    nome        VARCHAR(500),

    PRIMARY KEY (id_Regiao)
);

CREATE TABLE Estado(
    id_Estado   INTEGER NOT NULL,
    nome        VARCHAR(500),
    ref_Regiao  INTEGER,

    PRIMARY KEY (id_Estado, ref_Regiao),
    FOREIGN KEY (ref_Regiao) REFERENCES Regiao(id_Regiao)
);

CREATE TABLE Municipio(
    id_Municipio    INTEGER NOT NULL,
    nome            VARCHAR(500),
    ref_Regiao      INTEGER,
    ref_Estado      INTEGER,

    PRIMARY KEY (id_Municipio, ref_Regiao, ref_Estado),
    FOREIGN KEY (ref_Regiao, ref_Estado) REFERENCES Estado(ref_Regiao, id_Estado)
);

CREATE TABLE Escola(
    prova_Brasil        INTEGER,
    ref_Estado          INTEGER,
    ref_Municipio       INTEGER,
    id_Escola           INTEGER NOT NULL,
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
    presentes_9EF           INTEGER,
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
    presentes_3EM               INTEGER,
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

    PRIMARY KEY (id_Escola),
    FOREIGN KEY (ref_Estado, ref_Municipio) REFERENCES Municipio(ref_Estado, id_Municipio)
);

CREATE TABLE Diretor(
    prova_Brasil        INTEGER,
    ref_Estado          INTEGER,
    ref_Municipio       INTEGER,
    ref_Escola          INTEGER,
    dependencia_ADM     INTEGER,
    localizacao         INTEGER,
    preenchimento_Questionario  INTEGER,

    PRIMARY KEY (ref_Estado, ref_municipio, ref_Escola),
    FOREIGN KEY (ref_Estado, ref_Municipio) REFERENCES Municipio(ref_Estado, id_Municipio),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola)
);

CREATE TABLE Professor(
    prova_Brasil    INTEGER,
    ref_Estado      INTEGER,
    ref_Municipio   INTEGER,
    ref_Escola      INTEGER,
    dependencia_ADM INTEGER,
    localizacao     INTEGER,
    turma           INTEGER,
    id_Professor    INTEGER,
    serie           INTEGER,
    preenchimento_Questionario  INTEGER,

    PRIMARY KEY (id_Professor),
    FOREIGN KEY (ref_Estado, ref_Municipio) REFERENCES Municipio(ref_Estado, id_Municipio),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola)
);

CREATE TABLE Aluno(
    prova_Brasil    INTEGER,
    ref_Regiao      INTEGER,
    ref_Estado      INTEGER,
    ref_Municipio   INTEGER,
    area            INTEGER,
    ref_Escola      INTEGER,
    dependencia_ADM INTEGER,
    localizacao     INTEGER,
    turma           INTEGER,
    turno           INTEGER,
    serie           INTEGER,
    id_Aluno        INTEGER NOT NULL,
    situacao_Censo      INTEGER,
    preechimento_Prova  INTEGER,
    presenca_Prova      INTEGER,
    caderno     INTEGER,
    bloco_1     INTEGER,
    bloco_2     INTEGER,
    resp_Bloco1_LP      VARCHAR(13),
    resp_Bloco2_LP      VARCHAR(13),
    resp_Bloco1_MT      VARCHAR(13),
    resp_Bloco2_MT      VARCHAR(13),
    proeficiencia       INTEGER,
    in_Prova_Brasil     INTEGER,
    estrato_Aneb        VARCHAR,
    peso_Aluno_LP       FLOAT,
    peso_Aluno_MT       FLOAT,
    proeficiencia_LP    FLOAT,
    erro_Padrao_LP      FLOAT,
    proeficiencia_LP_SAEB   FLOAT,
    erro_Padrao_LP_SAEB     FLOAT,
    proeficiencia_MT        FLOAT,
    erro_Padrao_MT          FLOAT,
    proeficiencia_MT_SAEB   FLOAT,
    erro_Padrao_MT_SAEB     FLOAT,
    preenchimento_Questionario  INTEGER,

    PRIMARY KEY (id_Aluno),
    FOREIGN KEY (ref_Regiao, ref_Estado, ref_Municipio) REFERENCES Municipio(ref_Regiao, ref_Estado, id_Municipio),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola)
);

CREATE TABLE Item(
    serie       INTEGER,
    tipo_Prova  VARCHAR(13),
    disciplina  VARCHAR(2),
    serie_Item1 INTEGER,
    bloco       INTEGER,
    posicao     INTEGER,
    id_Item     INTEGER,
    descritor_Habilidade    INTEGER,
    gabarito    VARCHAR(1),

    PRIMARY KEY (id_Item)
);

/*                                               Questionarios                                                    */
CREATE TABLE Questionario_Escola(
    id_Quest_Escola     SERIAL,
    ref_Escola          INTEGER,
    resp_Q007      VARCHAR(1),
    resp_Q008      VARCHAR(1),
    resp_Q009      VARCHAR(1),
    resp_Q010      VARCHAR(1),
    resp_Q011      VARCHAR(1),
    resp_Q012      VARCHAR(1),
    resp_Q013      VARCHAR(1),
    resp_Q014      VARCHAR(1),
    resp_Q015      VARCHAR(1),
    resp_Q016      VARCHAR(1),
    resp_Q017      VARCHAR(1),
    resp_Q018      VARCHAR(1),
    resp_Q019      VARCHAR(1),
    resp_Q020      VARCHAR(1),
    resp_Q021      VARCHAR(1),
    resp_Q022      VARCHAR(1),
    resp_Q023      VARCHAR(1),
    resp_Q024      VARCHAR(1),
    resp_Q025      VARCHAR(1),
    resp_Q026      VARCHAR(1),
    resp_Q027      VARCHAR(1),
    resp_Q028      VARCHAR(1),
    resp_Q029      VARCHAR(1),
    resp_Q030      VARCHAR(1),
    resp_Q031      VARCHAR(1),
    resp_Q032      VARCHAR(1),
    resp_Q033      VARCHAR(1),
    resp_Q034      VARCHAR(1),
    resp_Q035      VARCHAR(1),
    resp_Q036      VARCHAR(1),
    resp_Q037      VARCHAR(1),
    resp_Q038      VARCHAR(1),
    resp_Q039      VARCHAR(1),
    resp_Q040      VARCHAR(1),
    resp_Q041      VARCHAR(1),
    resp_Q042      VARCHAR(1),
    resp_Q043      VARCHAR(1),
    resp_Q044      VARCHAR(1),
    resp_Q045      VARCHAR(1),
    resp_Q046      VARCHAR(1),
    resp_Q047      VARCHAR(1),
    resp_Q048      VARCHAR(1),
    resp_Q049      VARCHAR(1),
    resp_Q050      VARCHAR(1),
    resp_Q051      VARCHAR(1),
    resp_Q052      VARCHAR(1),
    resp_Q053      VARCHAR(1),
    resp_Q054      VARCHAR(1),
    resp_Q055      VARCHAR(1),
    resp_Q056      VARCHAR(1),
    resp_Q057      VARCHAR(1),
    resp_Q058      VARCHAR(1),
    resp_Q059      VARCHAR(1),
    resp_Q060      VARCHAR(1),
    resp_Q061      VARCHAR(1),
    resp_Q062      VARCHAR(1),
    resp_Q063      VARCHAR(1),
    resp_Q064      VARCHAR(1),
    resp_Q065      VARCHAR(1),
    resp_Q066      VARCHAR(1),
    resp_Q067      VARCHAR(1),
    resp_Q068      VARCHAR(1),
    resp_Q069      VARCHAR(1),
    resp_Q070      VARCHAR(1),
    resp_Q071      VARCHAR(1),
    resp_Q072      VARCHAR(1),
    resp_Q073      VARCHAR(1),
    resp_Q074      VARCHAR(1),

    PRIMARY KEY (id_Quest_Escola, ref_Escola),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola)
);

CREATE TABLE Questionario_Diretor(
    id_Quest_Diretor    SERIAL,
    ref_Escola  INTEGER,
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

    PRIMARY KEY (id_Quest_Diretor, ref_Diretor),
    FOREIGN KEY (ref_Escola) REFERENCES Escola(id_Escola) 
);

CREATE TABLE Questionario_Professor(
    id_Quest_Professor  SERIAL,
    ref_Professor       INTEGER,
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

    PRIMARY KEY (id_Quest_Professor, ref_Professor),
    FOREIGN KEY (ref_Professor) REFERENCES Professor(id_Professor)
);

CREATE TABLE Questionario_Aluno(
    id_Quest_Aluno  SERIAL,
    ref_Aluno       INTEGER,
    resp_Q001       VARCHAR(1),
    resp_Q002       VARCHAR(1),
    resp_Q003       VARCHAR(1),
    resp_Q004       VARCHAR(1),
    resp_Q005       VARCHAR(1),
    resp_Q006       VARCHAR(1),
    resp_Q007       VARCHAR(1),
    resp_Q008       VARCHAR(1),
    resp_Q009       VARCHAR(1),
    resp_Q010       VARCHAR(1),
    resp_Q011       VARCHAR(1),
    resp_Q012       VARCHAR(1),
    resp_Q013       VARCHAR(1),
    resp_Q014       VARCHAR(1),
    resp_Q015       VARCHAR(1),
    resp_Q016       VARCHAR(1),
    resp_Q017       VARCHAR(1),
    resp_Q018       VARCHAR(1),
    resp_Q019       VARCHAR(1),
    resp_Q020       VARCHAR(1),
    resp_Q021       VARCHAR(1),
    resp_Q022       VARCHAR(1),
    resp_Q023       VARCHAR(1),
    resp_Q024       VARCHAR(1),
    resp_Q025       VARCHAR(1),
    resp_Q026       VARCHAR(1),
    resp_Q027       VARCHAR(1),
    resp_Q028       VARCHAR(1),
    resp_Q029       VARCHAR(1),
    resp_Q030       VARCHAR(1),
    resp_Q031       VARCHAR(1),
    resp_Q032       VARCHAR(1),
    resp_Q033       VARCHAR(1),
    resp_Q034       VARCHAR(1),
    resp_Q035       VARCHAR(1),
    resp_Q036       VARCHAR(1),
    resp_Q037       VARCHAR(1),
    resp_Q038       VARCHAR(1),
    resp_Q039       VARCHAR(1),
    resp_Q040       VARCHAR(1),
    resp_Q041       VARCHAR(1),
    resp_Q042       VARCHAR(1),
    resp_Q043       VARCHAR(1),
    resp_Q044       VARCHAR(1),
    resp_Q045       VARCHAR(1),
    resp_Q046       VARCHAR(1),
    resp_Q047       VARCHAR(1),
    resp_Q048       VARCHAR(1),
    resp_Q049       VARCHAR(1),
    resp_Q050       VARCHAR(1),
    resp_Q051       VARCHAR(1),
    resp_Q052       VARCHAR(1),
    resp_Q053       VARCHAR(1),
    resp_Q054       VARCHAR(1),
    resp_Q055       VARCHAR(1),
    resp_Q056       VARCHAR(1),
    resp_Q057       VARCHAR(1),
    resp_Q058       VARCHAR(1),
    resp_Q059       VARCHAR(1),
    resp_Q060       VARCHAR(1),

    PRIMARY KEY (id_Quest_Aluno, ref_Aluno),
    FOREIGN KEY (ref_Aluno) REFERENCES Aluno(id_Aluno)
);