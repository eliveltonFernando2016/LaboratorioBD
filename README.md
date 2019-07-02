# Universidade Federal do Paraná
### Laboratório de Banco de Dados

### Descrição
    Estruturação da base de dados do SAEB 2017 (Sistema de Avaliação da Educação 
    Básica). Podendo esta base ser encontrada no seguinte  link: 
    http://portal.inep.gov.br/educacao-basica/saeb. As informações referentes aos dados, 
    encontra-se no diretório Dicionário. A base de dados referente ao projeto, encontra-se 
    no diretório LaboratorioBD/SAEB, onde estão distribuidos entre os arquivos partaa até 
    partaf. Para os dados brutos no formato CSV, estes estão em LaboratorioBD/Data/Parts onde 
    estão distribuidos entre os arquivos microdados_saeb_2017PARTaa até microdados_saeb_2017PARTah.

### Ferramentas
    Postgress, PgAdmin III+, Python 3.

### Compactação dos Dados
    Para concatenar os dados do diretório /SAEB, utilize o seguinte comando:
            ** $cat part* > file.zip **

    Para concatenar os dados do diretório /Data/Parts, utilize o seguinte comando:
            ** $cat microdados_saeb_2017PART* > file.zip **

### Metodologia
#### Passo 1
    Download e descompactação da base de dados, no link apresentado na descrição.

#### Passo 2
    Análise e estruturação dos dados, com base nas informações contidas no dicionário.

#### Passo 3
    Decomposição dos dados, criação das tabelas seguindo a 3ª forma normal, 
    relacionamento e diagramas SQL.

#### Passo 4
    Para a inserção dos dados das tabelas normalizadas, foram utilizados os códigos apresentados
    diretório LaboratorioBD/Scripts SQL/Inserts.

    Insert_Regiao.sql
    Insert_Estado.sql
    Insert_Municipio.sql
    Insert_Area.sql
    Insert_DependenciaADM.sql
    Insert_Localização.sql
    Insert_NivelSocioEconomico.sql
    Insert_PreenchimentoQuestionario.sql
    Insert_Serie.sql
    Insert_TipoProva.sql
    Insert_Disciplina.sql
    Insert_Turno.sql

#### Passo 5
    Importação dos dados presentes nos arquivos CSV, senguem esta ordem:
    TS_ITEM.csv, TS_ESCOLA.csv,TS_PROFESSOR.csv, TS_DIRETOR.csv, TS_ALUNOS_3EM_AG.csv,
    TS_ALUNOS_3EM_ESC.csv, TS_ALUNOS_5EF.csv, TS_ALUNOS_9EF.csv.

    Foi utilizado o seguinte código em Python 3, contido no diretório LaboratorioBD/
    Script SQL/reducedData.py para a filtragem dos dados e inserção dos mesmos em suas
    respectivas tabelas.

    Para a importação dos dados, foram utilizados os seguintes campos apresentados pela tabela abaixo,
    utilizando seus respectivos arquivos de dados.

| Tabela Banco de Dados | Arquivo de Dados | Campos Utilizados |
|-----------------------|----------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| item | TS_ITEM.csv | ID_SERIE TIPO_PROVA DISCIPLINA ID_SERIE_ITEM ID_BLOCO ID_POSICAO ID_ITEM DESCRITOR_HABILIDADE GABARITO |
| escola | TS_ESCOLA.csv | ID_PROVA_BRASIL ID_UF ID_MUNICIPIO ID_ESCOLA ID_DEPENDENCIA_ADM ID_LOCALIZACAO PC_FORMACAO_DOCENTE_INICIAL PC_FORMACAO_DOCENTE_FINAL PC_FORMACAO_DOCENTE_MEDIO NIVEL_SOCIO_ECONOMICO NU_MATRICULADOS_CENSO_5EF NU_PRESENTES_5EF TAXA_PARTICIPACAO_5EF Nivel_0_LP5 Nivel_1_LP5 Nivel_2_LP5 Nivel_3_LP5 Nivel_4_LP5 Nivel_5_LP5 Nivel_6_LP5 Nivel_7_LP5 Nivel_8_LP5 Nivel_9_LP5 Nivel_0_MT5 Nivel_1_MT5 Nivel_2_MT5 Nivel_3_MT5 Nivel_4_MT5 Nivel_5_MT5 Nivel_6_MT5 Nivel_7_MT5 Nivel_8_MT5 Nivel_9_MT5 Nivel_10_MT5 NU_MATRICULADOS_CENSO_9EF NU_PRESENTES_9EF TAXA_PARTICIPACAO_9EF Nivel_0_LP9 Nivel_1_LP9 Nivel_2_LP9 Nivel_3_LP9 Nivel_4_LP9 Nivel_5_LP9 Nivel_6_LP9 Nivel_7_LP9 Nivel_8_LP9 Nivel_0_MT9 Nivel_1_MT9 Nivel_2_MT9 Nivel_3_MT9 Nivel_4_MT9 Nivel_5_MT9 Nivel_6_MT9 Nivel_7_MT9 Nivel_8_MT9 Nivel_9_MT9 NU_MATRICULADOS_CENSO_3EM NU_PRESENTES_3EM TAXA_PARTICIPACAO_3EM Nivel_0_LP3 Nivel_1_LP3 Nivel_2_LP3 Nivel_3_LP3 Nivel_4_LP3 Nivel_5_LP3 Nivel_6_LP3 Nivel_7_LP3 Nivel_8_LP3 Nivel_0_MT3 Nivel_1_MT3 Nivel_2_MT3 Nivel_3_MT3 Nivel_4_MT3 Nivel_5_MT3 Nivel_6_MT3 Nivel_7_MT3 Nivel_8_MT3 Nivel_9_MT3 Nivel_10_MT3 MEDIA_5EF_LP MEDIA_5EF_MT MEDIA_9EF_LP MEDIA_9EF_MT MEDIA_3EM_LP MEDIA_3EM_MT IN_PREENCHIMENTO_QUESTIONARIO |
| professor | TS_PROFESSOR.csv | ID_PROVA_BRASIL ID_UF ID_MUNICIPIO ID_ESCOLA ID_DEPENDENCIA_ADM ID_LOCALIZACAO ID_TURMA CO_PROFESSOR ID_SERIE IN_PREENCHIMENTO_QUESTIONARIO |
| diretor | TS_DIRETOR.csv | ID_PROVA_BRASIL ID_UF ID_MUNICIPIO ID_ESCOLA ID_DEPENDENCIA_ADM ID_LOCALIZACAO IN_PREENCHIMENTO_QUESTIONARIO |
| alunos | TS_ALUNO_3EM_AG.csv TS_ALUNO_3EM_ESC.csv TS_ALUNO_5EF.csv TS_ALUNO_9EF.csv | ID_PROVA_BRASIL ID_REGIAO ID_UF ID_MUNICIPIO6 ID_AREA ID_ESCOLA6 ID_DEPENDENCIA_ADM ID_LOCALIZACAO ID_TURMA ID_TURNO ID_SERIE ID_ALUNO IN_SITUACAO_CENSO IN_PREENCHIMENTO_PROVA IN_PRESENCA_PROVA ID_CADERNO ID_BLOCO_1 ID_BLOCO_2 TX_RESP_BLOCO_1_LP2 TX_RESP_BLOCO_2_LP2 TX_RESP_BLOCO_1_MT2 TX_RESP_BLOCO_2_MT2 IN_PROFICIENCIA IN_PROVA_BRASIL ESTRATO_ANEB PESO_ALUNO_LP PESO_ALUNO_MT PROFICIENCIA_LP ERRO_PADRAO_LP PROFICIENCIA_LP_SAEB ERRO_PADRAO_LP_SAEB PROFICIENCIA_MT ERRO_PADRAO_MT PROFICIENCIA_MT_SAEB ERRO_PADRAO_MT_SAEB IN_PREENCHIMENTO_QUESTIONARIO |

#### Passo 6
    Para a inserção destes dados, foi utilizado a opção de import automático dos 
    arquivos de dados no PgAdmin. 
    Os dados de respostas dos formulários contidos nos mesmos arquivos também
    foram separados em um novo arquivo, utilizando o código, presente no seguinte 
    diretório: LaboratorioBD/Script SQL/filter.py 
    
#### Passo 7
    Os questionários respondidos por professores, diretores, alunos e escolas(Responsável pela escola)
    possuem o mesmo padrão de respostas, mudando apenas o conteúdo das questões e a quantidade das mesmas. 
    Portanto foi criado a tabela "questionario_geral" que possui uma chave primária única além de 125 campos 
    paras as questões que possuem o seguinte padrão <q001, q002, ... , q125>. Além dessa tabela foram criadas 
    tabelas específicas para cada uma das tabelas citadas inicialmente, essas tabelas possuem o seguinte padrão, 
    uma chave primária, uma chave estrangeira referenciando questionario_geral, e outra chave referenciando sua 
    tabela nativa(escola, aluno, professor, diretor, ...).
