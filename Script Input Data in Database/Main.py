import pandas
from numpy import long

from DAO.aluno import AlunoSql
from DAO.connection import Connection
from DAO.diretor import DiretorSql
from DAO.escola import EscolaSql
from DAO.item import ItemSql
from Model.diretor import Diretor
from Model.escola import Escola
from Model.item import Item


def leitura_diretor():
    df = pandas.read_csv('/home/elivelton/Downloads/microdados_saeb_2017/DADOS/TS_DIRETOR.csv', usecols=['ID_PROVA_BRASIL', 'ID_UF', 'ID_MUNICIPIO', 'ID_ESCOLA', 'ID_DEPENDENCIA_ADM', 'ID_LOCALIZACAO', 'IN_PREENCHIMENTO_QUESTIONARIO'])
    return df


def leitura_escola():
    df = pandas.read_csv('/Users/cogeti/Google Drive/Lab Dados/SAEB/DADOS/TS_ESCOLA.csv', usecols=["ID_PROVA_BRASIL", "ID_UF", "ID_MUNICIPIO", "ID_ESCOLA", "ID_DEPENDENCIA_ADM", "ID_LOCALIZACAO", "PC_FORMACAO_DOCENTE_INICIAL", "PC_FORMACAO_DOCENTE_FINAL", "PC_FORMACAO_DOCENTE_MEDIO", "NIVEL_SOCIO_ECONOMICO", "NU_MATRICULADOS_CENSO_5EF", "NU_PRESENTES_5EF", "TAXA_PARTICIPACAO_5EF", "NIVEL_0_LP5", "NIVEL_1_LP5", "NIVEL_2_LP5", "NIVEL_3_LP5", "NIVEL_4_LP5", "NIVEL_5_LP5", "NIVEL_6_LP5", "NIVEL_7_LP5", "NIVEL_8_LP5", "NIVEL_9_LP5", "NIVEL_0_MT5", "NIVEL_1_MT5", "NIVEL_2_MT5", "NIVEL_3_MT5", "NIVEL_4_MT5", "NIVEL_5_MT5", "NIVEL_6_MT5", "NIVEL_7_MT5", "NIVEL_8_MT5", "NIVEL_9_MT5", "NIVEL_10_MT5", "NU_MATRICULADOS_CENSO_9EF", "NU_PRESENTES_9EF", "TAXA_PARTICIPACAO_9EF", "NIVEL_0_LP9", "NIVEL_1_LP9", "NIVEL_2_LP9", "NIVEL_3_LP9", "NIVEL_4_LP9", "NIVEL_5_LP9", "NIVEL_6_LP9", "NIVEL_7_LP9", "NIVEL_8_LP9", "NIVEL_0_MT9", "NIVEL_1_MT9", "NIVEL_2_MT9", "NIVEL_3_MT9", "NIVEL_4_MT9", "NIVEL_5_MT9", "NIVEL_6_MT9", "NIVEL_7_MT9", "NIVEL_8_MT9", "NIVEL_9_MT9", "NU_MATRICULADOS_CENSO_3EM", "NU_PRESENTES_3EM", "TAXA_PARTICIPACAO_3EM", "NIVEL_0_LP3", "NIVEL_1_LP3", "NIVEL_2_LP3", "NIVEL_3_LP3", "NIVEL_4_LP3", "NIVEL_5_LP3", "NIVEL_6_LP3", "NIVEL_7_LP3", "NIVEL_8_LP3", "NIVEL_0_MT3", "NIVEL_1_MT3", "NIVEL_2_MT3", "NIVEL_3_MT3", "NIVEL_4_MT3", "NIVEL_5_MT3", "NIVEL_6_MT3", "NIVEL_7_MT3", "NIVEL_8_MT3", "NIVEL_9_MT3", "NIVEL_10_MT3", "MEDIA_5EF_LP", "MEDIA_5EF_MT", "MEDIA_9EF_LP", "MEDIA_9EF_MT", "MEDIA_3EM_LP", "MEDIA_3EM_MT", "IN_PREENCHIMENTO_QUESTIONARIO"])

    return df


def leitura_item():
    df = pandas.read_csv('/home/suporte/Downloads/microdados_saeb_2017/DADOS/TS_ITEM.csv')

    return df


def leitura_aluno():
    df = pandas.read_csv('/home/suporte/Downloads/microdados_saeb_2017/DADOS/TS_ALUNO_3EM_ESC.csv', usecols=["ID_PROVA_BRASIL", "ID_REGIAO", "ID_UF", "ID_MUNICIPIO", "ID_AREA", "ID_ESCOLA", "ID_DEPENDENCIA_ADM", "ID_LOCALIZACAO", "ID_TURMA", "ID_TURNO", "ID_SERIE", "ID_ALUNO", "IN_SITUACAO_CENSO", "IN_PREENCHIMENTO_PROVA", "IN_PRESENCA_PROVA", "ID_CADERNO", "ID_BLOCO_1", "ID_BLOCO_2", "TX_RESP_BLOCO_1_LP", "TX_RESP_BLOCO_2_LP", "TX_RESP_BLOCO_1_MT", "TX_RESP_BLOCO_2_MT", "IN_PROFICIENCIA", "IN_PROVA_BRASIL", "ESTRATO_ANEB", "PESO_ALUNO_LP", "PESO_ALUNO_MT", "PROFICIENCIA_LP", "ERRO_PADRAO_LP", "PROFICIENCIA_LP_SAEB", "ERRO_PADRAO_LP_SAEB", "PROFICIENCIA_MT", "ERRO_PADRAO_MT", "PROFICIENCIA_MT_SAEB", "ERRO_PADRAO_MT_SAEB", "IN_PREENCHIMENTO_QUESTIONARIO"])

    return df


def diretor(df):
    diretorSql = DiretorSql()

    for index, row in df.iterrows():
        diretor = Diretor(row['ID_PROVA_BRASIL'], row['ID_UF'], row['ID_MUNICIPIO'], row['ID_ESCOLA'], row['ID_DEPENDENCIA_ADM'], row['ID_LOCALIZACAO'], row['IN_PREENCHIMENTO_QUESTIONARIO'])
        diretorSql.insert_diretor(connection.conexao(), diretor)


def escola(df):
    escolaSql = EscolaSql()

    for index, row in df.iterrows():
        escola = Escola(row['ID_PROVA_BRASIL'], row['ID_UF'], row['ID_MUNICIPIO'], row['ID_ESCOLA'], row['ID_DEPENDENCIA_ADM'], row['ID_LOCALIZACAO'], row['PC_FORMACAO_DOCENTE_INICIAL'], row['PC_FORMACAO_DOCENTE_FINAL'], row['PC_FORMACAO_DOCENTE_MEDIO'], row['NIVEL_SOCIO_ECONOMICO'], row['NU_MATRICULADOS_CENSO_5EF'], row['NU_PRESENTES_5EF'], row['TAXA_PARTICIPACAO_5EF'], row['NIVEL_0_LP5'], row['NIVEL_1_LP5'], row['NIVEL_2_LP5'], row['NIVEL_3_LP5'], row['NIVEL_4_LP5'], row['NIVEL_5_LP5'], row['NIVEL_6_LP5'], row['NIVEL_7_LP5'], row['NIVEL_8_LP5'], row['NIVEL_9_LP5'], row['NIVEL_0_MT5'], row['NIVEL_1_MT5'], row['NIVEL_2_MT5'], row['NIVEL_3_MT5'], row['NIVEL_4_MT5'], row['NIVEL_5_MT5'], row['NIVEL_6_MT5'], row['NIVEL_7_MT5'], row['NIVEL_8_MT5'], row['NIVEL_9_MT5'], row['NIVEL_10_MT5'], row['NU_MATRICULADOS_CENSO_9EF'], row['NU_PRESENTES_9EF'], row['TAXA_PARTICIPACAO_9EF'], row['NIVEL_0_LP9'], row['NIVEL_1_LP9'], row['NIVEL_2_LP9'], row['NIVEL_3_LP9'], row['NIVEL_4_LP9'], row['NIVEL_5_LP9'], row['NIVEL_6_LP9'], row['NIVEL_7_LP9'], row['NIVEL_8_LP9'], row['NIVEL_0_MT9'], row['NIVEL_1_MT9'], row['NIVEL_2_MT9'], row['NIVEL_3_MT9'], row['NIVEL_4_MT9'], row['NIVEL_5_MT9'], row['NIVEL_6_MT9'], row['NIVEL_7_MT9'], row['NIVEL_8_MT9'], row['NIVEL_9_MT9'], row['NU_MATRICULADOS_CENSO_3EM'], row['NU_PRESENTES_3EM'], row['TAXA_PARTICIPACAO_3EM'], row['NIVEL_0_LP3'], row['NIVEL_1_LP3'], row['NIVEL_2_LP3'], row['NIVEL_3_LP3'], row['NIVEL_4_LP3'], row['NIVEL_5_LP3'], row['NIVEL_6_LP3'], row['NIVEL_7_LP3'], row['NIVEL_8_LP3'], row['NIVEL_0_MT3'], row['NIVEL_1_MT3'], row['NIVEL_2_MT3'], row['NIVEL_3_MT3'], row['NIVEL_4_MT3'], row['NIVEL_5_MT3'], row['NIVEL_6_MT3'], row['NIVEL_7_MT3'], row['NIVEL_8_MT3'], row['NIVEL_9_MT3'], row['NIVEL_10_MT3'], row['MEDIA_5EF_LP'], row['MEDIA_5EF_MT'], row['MEDIA_9EF_LP'], row['MEDIA_9EF_MT'], row['MEDIA_3EM_LP'], row['MEDIA_3EM_MT'], row['IN_PREENCHIMENTO_QUESTIONARIO'])
        escolaSql.insertEscola(connection.conexao(), escola)


def item(df):
    itemSql = ItemSql()

    for index, row in df.iterrows():
        item = Item(row['ID_SERIE'], row['TIPO_PROVA'], row['DISCIPLINA'], row['ID_SERIE_ITEM'], row['ID_BLOCO'], row['ID_POSICAO'], row['ID_ITEM'], row['DESCRITOR_HABILIDADE'], row['GABARITO'])
        itemSql.insert_item(connection.conexao(), item)
        print(index, "de", len(df))


def aluno(df):
    newDf = []
    for index, row in df.iterrows():
        aluno = [
                int(row['ID_PROVA_BRASIL']), int(row['ID_REGIAO']), 
                int(row['ID_UF']), long(row['ID_MUNICIPIO']), 
                int(row['ID_AREA']), long(row['ID_ESCOLA']), 
                int(row['ID_DEPENDENCIA_ADM']), int(row['ID_LOCALIZACAO']), 
                int(row['ID_TURMA']), int(row['ID_TURNO']), int(row['ID_SERIE']), 
                long(row['ID_ALUNO']), int(row['IN_SITUACAO_CENSO']), 
                int(row['IN_PREENCHIMENTO_PROVA']), int(row['IN_PRESENCA_PROVA']), 
                int(row['ID_CADERNO']), int(row['ID_BLOCO_1']), int(row['ID_BLOCO_2']), 
                row['TX_RESP_BLOCO_1_LP'], row['TX_RESP_BLOCO_2_LP'], row['TX_RESP_BLOCO_1_MT'], 
                row['TX_RESP_BLOCO_2_MT'], int(row['IN_PROFICIENCIA']), int(row['IN_PROVA_BRASIL']), 
                str(row['ESTRATO_ANEB']), float(row['PESO_ALUNO_LP']), float(row['PESO_ALUNO_MT']), 
                float(row['PROFICIENCIA_LP']), float(row['ERRO_PADRAO_LP']), 
                float(row['PROFICIENCIA_LP_SAEB']), float(row['ERRO_PADRAO_LP_SAEB']), 
                float(row['PROFICIENCIA_MT']), float(row['ERRO_PADRAO_MT']), 
                float(row['PROFICIENCIA_MT_SAEB']), float(row['ERRO_PADRAO_MT_SAEB']), 
                bool(row['IN_PREENCHIMENTO_QUESTIONARIO'])
        ]
        newDf.append(aluno)

    for i in newDf:
        print(i)

    alunoSql = AlunoSql()
    alunoSql.insertAluno(connection.conexao(), newDf)


if __name__ == '__main__':
    connection = Connection()

    df = leitura_aluno()
    newDf = df.replace(to_replace="", value="0")

    aluno(newDf)

    connection.con.close()