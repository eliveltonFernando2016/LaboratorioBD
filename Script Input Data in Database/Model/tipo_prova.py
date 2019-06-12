class Tipo_prova:
    def __init__(self, id_prova, descricao):
        self.id_prova = id_prova
        self.descricao = descricao

    def setId_prova(self, id_prova):
        self.id_prova = id_prova

    def setDescricao(self, descricao):
        self.descricao = descricao

    def getId_prova(self):
        return self.id_prova

    def getDescricao(self):
        return self.descricao