class Item:
    def __init__(self, serie, tipo_prova, disciplina, serie_item, bloco, posicao, id_item, descritor_habilidade, gabarito):
        self.serie = serie
        self.tipo_prova = tipo_prova
        self.disciplina = disciplina
        self.serie_item = serie_item
        self.bloco = bloco
        self.posicao = posicao
        self.id_item = id_item
        self.descritor_habilidade = descritor_habilidade
        self.gabarito = gabarito

    def setSerie(self, serie):
        self.serie = serie

    def setTipo_prova(self, tipo_prova):
        self.tipo_prova = tipo_prova

    def setDisciplina(self, disciplina):
        self.disciplina = disciplina

    def setSerie_item(self, serie_item):
        self.serie_item = serie_item

    def setBloco(self, bloco):
        self.bloco = bloco

    def setPosicao(self, posicao):
        self.posicao = posicao

    def setId_item(self, id_item):
        self.id_item = id_item

    def setDescritor_habilidade(self, descritor_habilidade):
        self.descritor_habilidade = descritor_habilidade

    def setGabarito(self, gabarito):
        self.gabarito = gabarito

    def getSerie(self):
        return self.serie

    def getTipo_prova(self):
        return self.tipo_prova

    def getDisciplina(self):
        return self.disciplina

    def getSerie_item(self):
        return self.serie_item

    def getBloco(self):
        return self.bloco

    def getPosicao(self):
        return self.posicao

    def getId_item(self):
        return self.id_item

    def getDescritor_habilidade(self):
        return self.descritor_habilidade

    def getGabarito(self):
        return self.gabarito