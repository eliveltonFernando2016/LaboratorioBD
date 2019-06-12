class MunicipioSql:
    def insert_municipio(self, conexao, municipio):
        sql = "insert into municipio(cod_municipio, ref_estado) values (%s, %s)"

        record_to_insert = (int(municipio.getCod_municipio()), int(municipio.getRef_estado()))
        cur = conexao.cursor()
        cur.execute(sql, record_to_insert)

        conexao.commit()

    def existe_municipio(self, conexao, id_municipio):
        existe = False

        sql = "Select cod_municipio From municipio WHERE cod_municipio = %s"
        cur = conexao.cursor()
        cur.execute(sql, (int(id_municipio),))

        records = cur.fetchall()

        for row in records:
            existe = True
            break

        return existe