class Dependencia_adm:
    def __init__(self, id_dependencia, nome_dependencia):
        self.id_dependencia = id_dependencia
        self.nome_dependencia = nome_dependencia

    def setId_dependencia(self, id_dependencia):
        self.id_dependencia = id_dependencia

    def setNome_dependencia(self, nome_dependencia):
        self.nome_dependencia = nome_dependencia

    def getId_dependencia(self):
        return self.id_dependencia

    def getNome_dependencia(self):
        return self.nome_dependencia