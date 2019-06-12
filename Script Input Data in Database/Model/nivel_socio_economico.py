class Nivel_socio_economico:
    def __init__(self, id_nivel, grupo, nome_nivel):
        self.id_nivel = id_nivel
        self.grupo = grupo
        self.nome_nivel = nome_nivel

    def setId_nivel(self, id_nivel):
        self.id_nivel = id_nivel

    def setGrupo(self, grupo):
        self.grupo = grupo

    def setNome_nivel(self, nome_nivel):
        self.nome_nivel = nome_nivel

    def getId_nivel(self):
        return self.id_nivel

    def getGrupo(self):
        return self.grupo

    def getNome_nivel(self):
        return self.nome_nivel