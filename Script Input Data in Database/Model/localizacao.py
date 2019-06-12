class Localizacao:
    def __init__(self, id_localizacao, nome_localizacao):
        self.id_localizacao = id_localizacao
        self.nome_localizacao = nome_localizacao

    def setId_localizacao(self, id_localizacao):
        self.id_localizacao = id_localizacao

    def setNome_localizacao(self, nome_localizacao):
        self.nome_localizacao = nome_localizacao

    def getId_localizacao(self):
        return self.id_localizacao

    def getNome_localizacao(self):
        return self.nome_localizacao