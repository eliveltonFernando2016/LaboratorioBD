class Municipio:
    def __init__(self, cod_municipio, ref_estado):
        self.cod_municipio = cod_municipio
        self.ref_estado = ref_estado

    def setCod_municipio(self, cod_municipio):
        self.cod_municipio = cod_municipio

    def setRef_estado(self, ref_estado):
        self.ref_estado = ref_estado

    def getCod_municipio(self):
        return self.cod_municipio

    def getRef_estado(self):
        return self.ref_estado