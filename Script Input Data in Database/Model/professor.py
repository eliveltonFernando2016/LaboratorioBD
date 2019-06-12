class Professor:
    def __init__(self, prova_brasil, ref_estado, ref_municipio, ref_escola, dependencia_adm, localizacao, turma, id_professor, serie, preenchimento_questionario):
        self.prova_brasil = prova_brasil
        self.ref_estado = ref_estado
        self.ref_municipio = ref_municipio
        self.ref_escola = ref_escola
        self.dependencia_adm = dependencia_adm
        self.localizacao = localizacao
        self.turma = turma
        self.id_professor = id_professor
        self.serie = serie
        self.preenchimento_questionario = preenchimento_questionario

    def setProva_brasil(self, prova_brasil):
        self.prova_brasil = prova_brasil

    def setRef_estado(self, ref_estado):
        self.ref_estado = ref_estado

    def setRef_municipio(self, ref_municipio):
        self.ref_municipio = ref_municipio

    def setId_escola(self, id_escola):
        self.id_escola = id_escola

    def setDependencia_adm(self, dependencia_adm):
        self.dependencia_adm = dependencia_adm

    def setLocalizacao(self, localizacao):
        self.localizacao = localizacao

    def setTurma(self, turma):
        self.turma = turma

    def setId_professor(self, id_professor):
        self.id_professor = id_professor

    def setSerie(self, serie):
        self.serie = serie

    def setPreenchimento_questionario(self, preenchimento_questionario):
        self.preenchimento_questionario = preenchimento_questionario

    def getProva_brasil(self):
        return self.prova_brasil

    def getRef_estado(self):
        return self.ref_estado

    def getRef_municipio(self):
        return self.ref_municipio

    def getId_escola(self):
        return self.id_escola

    def getDependencia_adm(self):
        return self.dependencia_adm

    def getLocalizacao(self):
        return self.localizacao

    def getTurma(self):
        return  self.turma

    def getId_professor(self):
        return self.id_professor

    def getSerie(self):
        return self.serie

    def getPreenchimento_questionario(self):
        return self.preenchimento_questionario