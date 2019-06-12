class AlunoSql:
    def insertAluno(self, conexao, aluno):
        sql = "insert into aluno values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

        cur = conexao.cursor()
        cur.executemany(sql, aluno)

        conexao.commit()
