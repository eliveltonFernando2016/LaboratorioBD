class Serie:
    def __init__(self, id_serie, cod_serie, nome_serie):
        self.id_serie = id_serie
        self.cod_serie = cod_serie
        self.nome_serie = nome_serie

    def setId_serie(self, id_serie):
        self.id_serie = id_serie

    def setCod_serie(self, cod_serie):
        self.cod_serie = cod_serie

    def setNome_serie(self, nome_serie):
        self.nome_serie = nome_serie

    def getId_serie(self):
        return self.id_serie

    def getCod_serie(self):
        return self.cod_serie

    def getNome_serie(self):
        return self.nome_serie