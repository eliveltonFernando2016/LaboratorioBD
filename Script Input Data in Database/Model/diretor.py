class Diretor:
    def __init__(self, prova_brasil, ref_estado, ref_municipio, ref_escola, dependencia_adm, localizacao, preenchimento_questionario):
        self.prova_brasil = prova_brasil
        self.ref_estado = ref_estado
        self.ref_municipio = ref_municipio
        self.ref_escola = ref_escola
        self.dependencia_adm = dependencia_adm
        self.localizacao = localizacao
        self.preenchimento_questionario = preenchimento_questionario

    def setProva_brasil(self, prova_brasil):
        self.prova_brasil = prova_brasil

    def setRef_estado(self, ref_estado):
        self.ref_estado = ref_estado

    def setRef_municipio(self, ref_municipio):
        self.ref_municipio = ref_municipio

    def setId_escola(self, ref_escola):
        self.ref_escola = ref_escola

    def setDependencia_adm(self, dependencia_adm):
        self.dependencia_adm = dependencia_adm

    def setLocalizacao(self, localizacao):
        self.localizacao = localizacao

    def setPreenchimento_questionario(self, preenchimento_questionario):
        self.preenchimento_questionario = preenchimento_questionario

    def getProva_brasil(self):
        return self.prova_brasil

    def getRef_estado(self):
        return self.ref_estado

    def getRef_municipio(self):
        return self.ref_municipio

    def getId_escola(self):
        return self.ref_escola

    def getDependencia_adm(self):
        return self.dependencia_adm

    def getLocalizacao(self):
        return self.localizacao

    def getPreenchimento_questionario(self):
        return self.preenchimento_questionario