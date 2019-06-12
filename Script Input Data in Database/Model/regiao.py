class Regiao:
    def __init__(self, id_regiao, nome):
        self.id_regiao = id_regiao
        self.nome = nome

    def setId_regiao(self, id_regiao):
        self.id_regiao = id_regiao

    def setNome(self, nome):
        self.nome = nome

    def getId_regiao(self):
        return self.id_regiao

    def getNome(self):
        return self.nome