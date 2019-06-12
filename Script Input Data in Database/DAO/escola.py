from numpy import long

from DAO.municipio import MunicipioSql
from Model.municipio import Municipio


class EscolaSql:
    def insertEscola(self, conexao, escola):
        municipio = MunicipioSql()

        if not municipio.existe_municipio(conexao, escola.getRef_municipio()):
            m = Municipio(escola.getRef_municipio(), escola.getRef_estado())
            municipio.insert_municipio(conexao, m)

        sql = "insert into escola values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

        record = (int(escola.getProva_brasil()), int(escola.getRef_estado()), long(escola.getRef_municipio()), long(escola.getId_escola()), int(escola.getDependencia_adm()), int(escola.getLocalizacao()), float(escola.getFormacao_docente_inicial()), float(escola.getFormacao_docente_final()), float(escola.getFormacao_docente_medio()), escola.getNivel_socio_economico(), int(escola.getMatriculados_censo_5ef()), int(escola.getPresentes_5ef()), float(escola.getTaxa_participacao_5ef()), float(escola.getNivel_0_lp5()), float(escola.getNivel_1_lp5()), float(escola.getNivel_2_lp5()), float(escola.getNivel_3_lp5()), float(escola.getNivel_4_lp5()), float(escola.getNivel_5_lp5()), float(escola.getNivel_6_lp5()), float(escola.getNivel_7_lp5()), float(escola.getNivel_8_lp5()), float(escola.getNivel_9_lp5()), float(escola.getNivel_0_mt5()), float(escola.getNivel_1_mt5()), float(escola.getNivel_2_mt5()), float(escola.getNivel_3_mt5()), float(escola.getNivel_4_mt5()), float(escola.getNivel_5_mt5()), float(escola.getNivel_6_mt5()), float(escola.getNivel_7_mt5()), float(escola.getNivel_8_mt5()), float(escola.getNivel_9_mt5()), float(escola.getNivel_10_mt5()), int(escola.getMatriculados_censo_9ef()), float(escola.getPresentes_9ef()), float(escola.getTaxa_participacao_9ef()), float(escola.getNivel_0_lp9()), float(escola.getNivel_1_lp9()), float(escola.getNivel_2_lp9()), float(escola.getNivel_3_lp9()), float(escola.getNivel_4_lp9()), float(escola.getNivel_5_lp9()), float(escola.getNivel_6_lp9()), float(escola.getNivel_7_lp9()), float(escola.getNivel_8_lp9()), float(escola.getNivel_0_mt9()), float(escola.getNivel_1_mt9()), float(escola.getNivel_2_mt9()), float(escola.getNivel_3_mt9()), float(escola.getNivel_4_mt9()), float(escola.getNivel_5_mt9()), float(escola.getNivel_6_mt9()), float(escola.getNivel_7_mt9()), float(escola.getNivel_8_mt9()), float(escola.getNivel_9_mt9()), int(escola.getMatriculados_censo_3em()), float(escola.getPresentes_3em()), float(escola.getTaxa_participacao_3em()), float(escola.getNivel_0_lp3()), float(escola.getNivel_1_lp3()), float(escola.getNivel_2_lp3()), float(escola.getNivel_3_lp3()), float(escola.getNivel_4_lp3()), float(escola.getNivel_5_lp3()), float(escola.getNivel_6_lp3()), float(escola.getNivel_7_lp3()), float(escola.getNivel_8_lp3()), float(escola.getNivel_0_mt3()), float(escola.getNivel_1_mt3()), float(escola.getNivel_2_mt3()), float(escola.getNivel_3_mt3()), float(escola.getNivel_4_mt3()), float(escola.getNivel_5_mt3()), float(escola.getNivel_6_mt3()), float(escola.getNivel_7_mt3()), float(escola.getNivel_8_mt3()), float(escola.getNivel_9_mt3()), float(escola.getNivel_10_mt3()), float(escola.getMedia_5ef_lp()), float(escola.getMedia_5ef_mt()), float(escola.getMedia_9ef_lp()), float(escola.getMedia_9ef_mt()), float(escola.getMedia_3em_lp()), float(escola.getMedia_3em_mt()), bool(escola.getPreenchimento_questionario()))
        print(record)

        cur = conexao.cursor()
        cur.execute(sql, record)

        conexao.commit()