import psycopg2


class Connection:
    def __init__(self):
        try:
            self.con = psycopg2.connect(host="saeb_2017.postgresql.dbaas.com.br", database="saeb_2017", user="saeb_2017",  password="saeb@2017")
        except (Exception, psycopg2.Error) as error:
            if self.con:
                print("Failed to insert record into mobile table", error)

    def conexao(self):
        return self.con