class Disciplina:
    def __init__(self, id_disciplina, cod_disciplina, nome_disciplina):
        self.id_disciplina = id_disciplina
        self.cod_disciplina = cod_disciplina
        self. nome_disciplina = nome_disciplina

    def setId_disciplina(self, id_disciplina):
        self.id_disciplina = id_disciplina

    def setCod_disciplina(self, cod_disciplina):
        self.cod_disciplina = cod_disciplina

    def setNome_disciplina(self, nome_disciplina):
        self.nome_disciplina = nome_disciplina

    def getId_disciplina(self):
        return self.id_disciplina

    def getCod_disciplina(self):
        return self.cod_disciplina

    def getNome_disciplina(self):
        return self.nome_disciplina