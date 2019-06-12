from DAO.municipio import MunicipioSql
from Model.municipio import Municipio


class DiretorSql:
    def insert_diretor(self, conexao, diretor):
        municipio = MunicipioSql()

        if not municipio.existe_municipio(conexao, diretor.getRef_municipio()):
            m = Municipio(diretor.getRef_municipio(), diretor.getRef_estado())
            municipio.insert_municipio(conexao, m)

        sql = "insert into diretor values (%s, %s, %s, %s, %s, %s, %s)"

        record = (int(diretor.getProva_brasil()), int(diretor.getRef_estado()), int(diretor.getRef_municipio()), int(diretor.getId_escola()), int(diretor.getDependencia_adm()), int(diretor.getLocalizacao()), bool(diretor.getPreenchimento_questionario()))
        cur = conexao.cursor()
        cur.execute(sql, record)

        conexao.commit()