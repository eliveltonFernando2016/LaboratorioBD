class Preenchimento_questionario:
    def __init__(self, id_preenchimento, cod_preenchimento, nome_preenchimento):
        self.id_preenchimento = id_preenchimento
        self.cod_preenchimento = cod_preenchimento
        self.nome_preenchimento = nome_preenchimento

    def setId_preenchimento(self, id_preenchimento):
        self.id_preenchimento = id_preenchimento

    def setCod_preenchimento(self, cod_preenchimento):
        self.cod_preenchimento = cod_preenchimento

    def setNome_preenchimento(self, nome_preenchimento):
        self.nome_preenchimento = nome_preenchimento

    def getId_preenchimento(self):
        return self.id_preenchimento

    def getCod_preechimento(self):
        return self.cod_preenchimento

    def getNome_preenchimento(self):
        return self.nome_preenchimento