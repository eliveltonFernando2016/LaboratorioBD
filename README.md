# Universidade Federal do Paraná
### Laboratório de Banco de Dados

### Descrição
    Estruturação da base de dados do SAEB 2017 (Sistema de Avaliação da Educação Básica). Podendo esta
    base ser encontrada no seguinte link: http://portal.inep.gov.br/educacao-basica/saeb. As informações
    referentes aos dados, encontra-se no diretório Dicionário.
    A base de dados referente ao projeto R, encontra-se na pasta /SAEB, onde estão distribuidos entre os
    arquivos partaa até partaf. Para os dados brutos no formato CSV, estes estão em /Data/Parts onde estão 
    distribuidos entre os arquivos microdados_saeb_2017PARTaa até microdados_saeb_2017PARTah.

### Ferramentas
    Postgress, PgAdmin III+, RStudio, R.

### Compactação dos Dados
    Para concatenar os dados do diretório /SAEB, utilize o seguinte comando:
            ** $cat part* > file.zip **

    Para concatenar os dadod do diretório /Data/Parts, utilize o seguinte comando:
            ** $cat microdados_saeb_2017PART* > file.zip **
