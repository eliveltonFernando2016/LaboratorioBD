class Aluno:
    def __init__(self, prova_brasil, ref_regiao, ref_estado, ref_municipio, area, ref_escola, dependencia_adm, localizacao, turma, turno, serie, id_aluno, situacao_censo, preechimento_prova, presenca_prova, caderno, bloco_1, bloco_2, resp_bloco1_lp, resp_bloco2_lp, resp_bloco1_mt, resp_bloco2_mt, proeficiencia, in_prova_brasil, estrato_aneb, peso_aluno_lp, peso_aluno_mt, proeficiencia_lp, erro_padrao_lp, proeficiencia_lp_saeb, erro_padrao_lp_saeb, proeficiencia_mt, erro_padrao_mt, proeficiencia_mt_saeb, erro_padrao_mt_saeb, preenchimento_questionario):
        self.prova_brasil = prova_brasil
        self.ref_regiao = ref_regiao
        self.ref_estado = ref_estado
        self.ref_municipio = ref_municipio
        self.area = area
        self.ref_escola = ref_escola
        self.dependencia_adm = dependencia_adm
        self.localizacao = localizacao
        self.turma = turma
        self.turno = turno
        self.serie = serie
        self.id_aluno = id_aluno
        self.situacao_censo = situacao_censo
        self.preechimento_prova = preechimento_prova
        self.presenca_prova = presenca_prova
        self.caderno = caderno
        self.bloco_1 = bloco_1
        self.bloco_2 = bloco_2
        self.resp_bloco1_lp = resp_bloco1_lp
        self.resp_bloco2_lp = resp_bloco2_lp
        self.resp_bloco1_mt = resp_bloco1_mt
        self.resp_bloco2_mt = resp_bloco2_mt
        self.proeficiencia = proeficiencia
        self.in_prova_brasil = in_prova_brasil
        self.estrato_aneb = estrato_aneb
        self.peso_aluno_lp = peso_aluno_lp
        self.peso_aluno_mt = peso_aluno_mt
        self.proeficiencia_lp = proeficiencia_lp
        self.erro_padrao_lp = erro_padrao_lp
        self.proeficiencia_lp_saeb = proeficiencia_lp_saeb
        self.erro_padrao_lp_saeb = erro_padrao_lp_saeb
        self.proeficiencia_mt = proeficiencia_mt
        self.erro_padrao_mt = erro_padrao_mt
        self.proeficiencia_mt_saeb = proeficiencia_mt_saeb
        self.erro_padrao_mt_saeb = erro_padrao_mt_saeb
        self.preenchimento_questionario = preenchimento_questionario

    def setProva_brasil(self, prova_brasil):
        self.prova_brasil = prova_brasil

    def setRef_regiao(self, ref_regiao):
        self.ref_regiao = ref_regiao

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

    def setTurma(self, turma):
        self.turma = turma

    def setTurno(self, turno):
        self.turno = turno

    def setSerie(self, serie):
        self.serie = serie

    def setId_aluno(self, id_aluno):
        self.id_aluno = id_aluno

    def setSituacao_censo(self, situacao_censo):
        self.situacao_censo = situacao_censo

    def setPreechimento_prova(self, preechimento_prova):
        self.preechimento_prova = preechimento_prova

    def setPresenca_prova(self, presenca_prova):
        self.presenca_prova = presenca_prova

    def setCaderno(self, caderno):
        self.caderno = caderno

    def setBloco_1(self, bloco_1):
        self.bloco_1 = bloco_1

    def setBloco_2(self, bloco_2):
        self.bloco_2 = bloco_2

    def setResp_bloco1_lp(self, resp_bloco1_lp):
        self.resp_bloco1_lp = resp_bloco1_lp

    def setResp_bloco2_lp(self, resp_bloco2_lp):
        self.resp_bloco2_lp = resp_bloco2_lp

    def setResp_bloco1_mt(self, resp_bloco1_mt):
        self.resp_bloco1_mt = resp_bloco1_mt

    def setResp_bloco2_mt(self, resp_bloco2_mt):
        self.resp_bloco2_mt = resp_bloco2_mt

    def setProeficiencia(self, proeficiencia):
        self.proeficiencia = proeficiencia

    def setIn_prova_brasil(self, in_prova_brasil):
        self.in_prova_brasil = in_prova_brasil

    def setEstrato_aneb(self, estrato_aneb):
        self.estrato_aneb = estrato_aneb

    def setPeso_aluno_lp(self, peso_aluno_lp):
        self.peso_aluno_lp = peso_aluno_lp

    def setPeso_aluno_mt(self, peso_aluno_mt):
        self.peso_aluno_mt = peso_aluno_mt

    def setProeficiencia_lp(self, proeficiencia_lp):
        self.proeficiencia_lp = proeficiencia_lp

    def setErro_padrao_lp(self, erro_padrao_lp):
        self.erro_padrao_lp = erro_padrao_lp

    def setProeficiencia_lp_saeb(self, proeficiencia_lp_saeb):
        self.proeficiencia_lp_saeb = proeficiencia_lp_saeb

    def setErro_padrao_lp_saeb(self, erro_padrao_lp_saeb):
        self.erro_padrao_lp_saeb = erro_padrao_lp_saeb

    def setProeficiencia_mt(self, proeficiencia_mt):
        self.proeficiencia_mt = proeficiencia_mt

    def setErro_padrao_mt(self, erro_padrao_mt):
        self.erro_padrao_mt = erro_padrao_mt

    def setProeficiencia_mt_saeb(self, proeficiencia_mt_saeb):
        self.proeficiencia_mt_saeb = proeficiencia_mt_saeb

    def setErro_padrao_mt_saeb(self, erro_padrao_mt_saeb):
        self.erro_padrao_mt_saeb = erro_padrao_mt_saeb

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

    def getTurma(self):
        return self.turma

    def getTurno(self):
        return self.turno

    def getSerie(self):
        return self.serie

    def getId_aluno(self):
        return self.id_aluno

    def getSituacao_Censo(self):
        return self.situacao_censo

    def getPreechimento_Prova(self):
        return self.preechimento_prova

    def getPresenca_Prova(self):
        return self.presenca_prova

    def getCaderno(self):
        return self.caderno

    def getBloco_1(self):
        return self.bloco_1

    def getBloco_2(self):
        return self.bloco_2

    def getResp_Bloco1_LP(self):
        return self.resp_bloco1_lp

    def getResp_Bloco2_LP(self):
        return self.resp_bloco2_lp

    def getResp_Bloco1_MT(self):
        return self.resp_bloco1_mt

    def getResp_Bloco2_MT(self):
        return self.resp_bloco2_mt

    def getProeficiencia(self):
        return self.proeficiencia

    def getIn_Prova_Brasil(self):
        return self.in_prova_brasil

    def getEstrato_Aneb(self):
        return self.estrato_aneb

    def getPeso_Aluno_LP(self):
        return self.peso_aluno_lp

    def getPeso_Aluno_MT(self):
        return self.peso_aluno_mt

    def getProeficiencia_LP(self):
        return self.proeficiencia_lp

    def getErro_Padrao_LP(self):
        return self.erro_padrao_lp

    def getProeficiencia_LP_SAEB(self):
        return self.proeficiencia_lp_saeb

    def getErro_Padrao_LP_SAEB(self):
        return self.erro_padrao_lp_saeb

    def getProeficiencia_MT(self):
        return self.proeficiencia_mt

    def getErro_Padrao_MT(self):
        return self.erro_padrao_mt

    def getProeficiencia_MT_SAEB(self):
        return self.proeficiencia_mt_saeb

    def getErro_Padrao_MT_SAEB(self):
        return self.erro_padrao_mt_saeb

    def getPreenchimento_questionario(self):
        return self.preenchimento_questionario
