class ItemSql:
    def insert_item(self, conexao, item):
        sql = "insert into item values (%s, %s, %s, %s, %s, %s, %s, %s, %s)"

        record = (int(item.getSerie()), item.getTipo_prova(), item.getDisciplina(), int(item.getSerie_item()), int(item.getBloco()), int(item.getPosicao()), int(item.getId_item()), int(item.getDescritor_habilidade()), item.getGabarito())
        cur = conexao.cursor()
        cur.execute(sql, record)

        conexao.commit()