# Universidade Federal do Paraná
### Laboratório de Banco de Dados

### Descrição
Estruturação da base de dados do SAEB 2017 (Sistema de Avaliação da Educação Básica). 
Podendo esta base ser encontrada no seguinte  link: [http://portal.inep.gov.br/educacao-basica/saeb](http://portal.inep.gov.br/educacao-basica/saeb). As informações referentes aos dados, encontra-se no diretório Dicionário. A base de dados referente ao projeto, encontra-se no diretório LaboratorioBD/SAEB, onde estão distribuidos entre os arquivos partaa até partaf. Para os dados brutos no formato CSV, estes estão em LaboratorioBD/Data/Parts onde estão distribuidos entre os arquivos microdados_saeb_2017PARTaa até microdados_saeb_2017PARTah.

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
Decomposição dos dados, criação das tabelas seguindo a 3ª forma normal,  relacionamento e diagramas SQL.

#### Passo 4
Para a inserção dos dados das tabelas normalizadas, foram utilizados os códigos apresentados diretório LaboratorioBD/Scripts/Inserts.

- [Regiao.sql](Scripts/Inserts/Regiao.sql)
- [Estado.sql](Scripts/Inserts/Estado.sql)
- [Area.sql](Scripts/Inserts/Area.sql)
- [Dependencia_Adm.sql](Scripts/Inserts/Dependencia_Adm.sql)
- [Localizacao.sql](Scripts/Inserts/Localizacao.sql)
- [Nivel_Socio_Economico.sql](Scripts/Inserts/Nivel_Socio_Economico.sql)
- [Preenchimento_Questionario.sql](Scripts/Inserts/Preenchimento_Questionario.sql)
- [Serie.sql](Scripts/Inserts/Serie.sql)
- [Tipo_Prova.sql](Scripts/Inserts/Tipo_Prova.sql)
- [Disciplina.sql](Scripts/Inserts/Disciplina.sql)
- [Turno.sql](Scripts/Inserts/Turno.sql)

#### Passo 5
Importação dos dados presentes nos arquivos CSV, senguem esta ordem:
TS_ITEM.csv, TS_ESCOLA.csv,TS_PROFESSOR.csv, TS_DIRETOR.csv, TS_ALUNOS_3EM_AG.csv, TS_ALUNOS_3EM_ESC.csv, TS_ALUNOS_5EF.csv, TS_ALUNOS_9EF.csv.

Foi utilizado o seguinte código em Python 3, contido no diretório Script/reduce_data.py para a filtragem dos dados e inserção dos mesmos em suas respectivas tabelas.

Para a importação dos dados, foram utilizados os seguintes campos apresentados pela tabela abaixo, utilizando seus respectivos arquivos de dados.

| Tabela Banco de Dados | Arquivo de Dados | Campos Utilizados |
|-----------------------|----------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| item | TS_ITEM.csv | id_serie<br/> tipo_prova<br/> disciplina<br/> id_serie_item<br/> id_bloco<br/> id_posicao<br/> id_item descritor_habilidade<br/> gabarito |
| escola | TS_ESCOLA.csv | id_prova_brasil<br/> id_uf<br/> id_municipio<br/> id_escola<br/> id_dependencia_adm<br/> id_localizacao<br/> pc_formacao_docente_inicial<br/> pc_formacao_docente_final<br/> pc_formacao_docente_medio<br/> nivel_socio_economico<br/> nu_matriculados_censo_5ef<br/> nu_presentes_5ef<br/> taxa_participacao_5ef<br/> nivel_0_lp5<br/> nivel_1_lp5<br/> nivel_2_lp5<br/> nivel_3_lp5<br/> nivel_4_lp5<br/> nivel_5_lp5<br/> nivel_6_lp5<br/> nivel_7_lp5<br/> nivel_8_lp5<br/> nivel_9_lp5<br/> nivel_0_mt5<br/> nivel_1_mt5<br/> nivel_2_mt5<br/> nivel_3_mt5<br/> nivel_4_mt5<br/> nivel_5_mt5<br/> nivel_6_mt5<br/> nivel_7_mt5<br/> nivel_8_mt5<br/> nivel_9_mt5<br/> nivel_10_mt5<br/> nu_matriculados_censo_9ef<br/> nu_presentes_9ef<br/> taxa_participacao_9ef<br/> nivel_0_lp9<br/> nivel_1_lp9<br/> nivel_2_lp9<br/> nivel_3_lp9<br/> nivel_4_lp9<br/> nivel_5_lp9<br/> nivel_6_lp9<br/> nivel_7_lp9<br/> nivel_8_lp9<br/> nivel_0_mt9<br/> nivel_1_mt9<br/> nivel_2_mt9<br/> nivel_3_mt9<br/> nivel_4_mt9<br/> nivel_5_mt9<br/> nivel_6_mt9<br/> nivel_7_mt9<br/> nivel_8_mt9<br/> nivel_9_mt9<br/> nu_matriculados_censo_3em<br/> nu_presentes_3em<br/> taxa_participacao_3em<br/> nivel_0_lp3<br/> nivel_1_lp3<br/> nivel_2_lp3<br/> nivel_3_lp3<br/> nivel_4_lp3<br/> nivel_5_lp3<br/> nivel_6_lp3<br/> nivel_7_lp3<br/> nivel_8_lp3<br/> nivel_0_mt3<br/> nivel_1_mt3<br/> nivel_2_mt3<br/> nivel_3_mt3<br/> nivel_4_mt3<br/> nivel_5_mt3<br/> nivel_6_mt3<br/> nivel_7_mt3<br/> nivel_8_mt3<br/> nivel_9_mt3<br/> nivel_10_mt3<br/> media_5ef_lp<br/> media_5ef_mt<br/> media_9ef_lp<br/> media_9ef_mt<br/> media_3em_lp<br/> media_3em_mt<br/> in_preenchimento_questionario |
| professor | TS_PROFESSOR.csv | id_prova_brasil<br/> id_uf<br/> id_municipio<br/> id_escola<br/> id_dependencia_adm<br/> id_localizacao<br/> id_turma<br/> co_professor<br/> id_serie<br/> in_preenchimento_questionario |
| diretor | TS_DIRETOR.csv | id_prova_brasil<br/> id_uf<br/> id_municipio<br/> id_escola<br/> id_dependencia_adm<br/> id_localizacao<br/> in_preenchimento_questionario |
| alunos | TS_ALUNO_3EM_AG.csv<br/> TS_ALUNO_3EM_ESC.csv<br/> TS_ALUNO_5EF.csv<br/> TS_ALUNO_9EF.csv | id_prova_brasil<br/> id_regiao<br/> id_uf<br/> id_municipio6<br/> id_area<br/> id_escola6<br/> id_dependencia_adm<br/> id_localizacao<br/> id_turma<br/> id_turno<br/> id_serie<br/> id_aluno<br/> in_situacao_censo<br/> in_preenchimento_prova<br/> in_presenca_prova<br/> id_caderno<br/> id_bloco_1<br/> id_bloco_2<br/> tx_resp_bloco_1_lp2<br/> tx_resp_bloco_2_lp2<br/> tx_resp_bloco_1_mt2<br/> tx_resp_bloco_2_mt2<br/> in_proficiencia<br/> in_prova_brasil<br/> estrato_aneb<br/> peso_aluno_lp<br/> peso_aluno_mt<br/> proficiencia_lp<br/> erro_padrao_lp<br/> proficiencia_lp_saeb<br/> erro_padrao_lp_saeb<br/> proficiencia_mt<br/> erro_padrao_mt<br/> proficiencia_mt_saeb<br/> erro_padrao_mt_saeb<br/> in_preenchimento_questionario |

#### Passo 6
Para a inserção destes dados, foi utilizado a opção de import automático dos  arquivos de dados no PgAdmin. 

Os dados de respostas dos formulários contidos nos mesmos arquivos também foram separados em um novo arquivo, utilizando o código, presente no seguinte arquivo: [filter.py](Scripts/filter.py)
    
#### Passo 7
Os questionários respondidos por professores, diretores, alunos e escolas(Responsável pela escola) possuem o mesmo padrão de respostas, mudando apenas o conteúdo das questões e a quantidade das mesmas. 

Portanto foi criado a tabela "questionario_geral" que possui uma chave primária única além de 125 campos  paras as questões que possuem o seguinte padrão <q001, q002, ... , q125>. Além dessa tabela foram criadas tabelas específicas para cada uma das tabelas citadas inicialmente, essas tabelas possuem o seguinte padrão, uma chave primária, uma chave estrangeira referenciando questionario_geral, e outra chave referenciando sua tabela nativa(escola, aluno, professor, diretor, ...).

O script de criação da tabela de questionário geral encontra-se no seguinte arquivo: [Questionario_Geral.sql](Scripts/Questionario_Geral.sql).

O script de criação dos questionários específicos estão especificados aqui: [Questionario_Aluno](Scripts/Create/Questionario_Aluno.sql), [Questionario_Diretor](Scripts/Create/Questionario_Diretor.sql), [Questionario_Escola](Scripts/Create/Questionario_Escola.sql), [Questionario_Professor](Scripts/Create/Questionario_Professor.sql).

Para inserção dos dados das tabelas, primeiramente foi feito a filtragem dos dados desses arquivos, usando o código em python descrito no seguinte arquivo: [reduce_data.py](Scripts/reduce_data.py), e então foram importados os dados primeiramente para a tabela questionario_geral usando a importação automática de arquivo csv do pgAdmin.

### Passo 8
Com os dados já inseridos na tabela questionario_geral é necessário a inserção dos dados nas tabelas específicas. Pra isso foi utilizado os seguintes scripts: [questionario_aluno.sql](Scripts/Inserts/Questionario_Aluno.sql), [questionario_diretor.sql](Scripts/Inserts/Questionario_Diretor.sql), [questionario_escola.sql](Scripts/Inserts/Questionario_Escola.sql), [questionario_professor.sql](Scripts/Inserts/Questionario_Professor.sql).