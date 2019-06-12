class Regiao:
    def __init__(self, id_regiao, nome, ref_regiao):
        self.id_regiao = id_regiao
        self.nome = nome
        self.ref_regiao = ref_regiao

    def setId_regiao(self, id_regiao):
        self.id_regiao = id_regiao

    def setNome(self, nome):
        self.nome = nome

    def setRef_regiao(self, ref_regiao):
        self.ref_regiao = ref_regiao

    def getId_regiao(self):
        return self.id_regiao

    def getNome(self):
        return self.nome

    def getRef_regiao(self):
        return self.ref_regiao