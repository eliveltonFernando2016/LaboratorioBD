class Escola:
    def __init__(self, prova_brasil, ref_estado, ref_municipio, id_escola, dependencia_adm, localizacao, formacao_docente_inicial, formacao_docente_final, formacao_docente_medio, nivel_socio_economico, matriculados_censo_5ef, presentes_5ef, taxa_participacao_5ef, nivel_0_lp5, nivel_1_lp5, nivel_2_lp5, nivel_3_lp5, nivel_4_lp5, nivel_5_lp5, nivel_6_lp5, nivel_7_lp5, nivel_8_lp5, nivel_9_lp5, nivel_0_mt5, nivel_1_mt5, nivel_2_mt5, nivel_3_mt5, nivel_4_mt5, nivel_5_mt5, nivel_6_mt5, nivel_7_mt5, nivel_8_mt5, nivel_9_mt5, nivel_10_mt5, matriculados_censo_9ef, presentes_9ef, taxa_participacao_9ef, nivel_0_lp9, nivel_1_lp9, nivel_2_lp9, nivel_3_lp9, nivel_4_lp9, nivel_5_lp9, nivel_6_lp9, nivel_7_lp9, nivel_8_lp9, nivel_0_mt9, nivel_1_mt9, nivel_2_mt9, nivel_3_mt9, nivel_4_mt9, nivel_5_mt9, nivel_6_mt9, nivel_7_mt9, nivel_8_mt9, nivel_9_mt9, matriculados_censo_3em, presentes_3em, taxa_participacao_3em, nivel_0_lp3, nivel_1_lp3, nivel_2_lp3, nivel_3_lp3, nivel_4_lp3, nivel_5_lp3, nivel_6_lp3, nivel_7_lp3, nivel_8_lp3, nivel_0_mt3, nivel_1_mt3, nivel_2_mt3, nivel_3_mt3, nivel_4_mt3, nivel_5_mt3, nivel_6_mt3, nivel_7_mt3, nivel_8_mt3, nivel_9_mt3, nivel_10_mt3, media_5ef_lp, media_5ef_mt, media_9ef_lp, media_9ef_mt, media_3em_lp, media_3em_mt, preenchimento_questionario):
        self.prova_brasil = prova_brasil
        self.ref_estado = ref_estado
        self.ref_municipio = ref_municipio
        self.id_escola = id_escola
        self.dependencia_adm = dependencia_adm
        self.localizacao = localizacao
        self.formacao_docente_inicial = formacao_docente_inicial
        self.formacao_docente_final = formacao_docente_final
        self.formacao_docente_medio = formacao_docente_medio
        self.nivel_socio_economico = nivel_socio_economico
        self.matriculados_censo_5ef = matriculados_censo_5ef
        self.presentes_5ef = presentes_5ef
        self.taxa_participacao_5ef = taxa_participacao_5ef
        self.nivel_0_lp5 = nivel_0_lp5
        self.nivel_1_lp5 = nivel_1_lp5
        self.nivel_2_lp5 = nivel_2_lp5
        self.nivel_3_lp5 = nivel_3_lp5
        self.nivel_4_lp5 = nivel_4_lp5
        self.nivel_5_lp5 = nivel_5_lp5
        self.nivel_6_lp5 = nivel_6_lp5
        self.nivel_7_lp5 = nivel_7_lp5
        self.nivel_8_lp5 = nivel_8_lp5
        self.nivel_9_lp5 = nivel_9_lp5
        self.nivel_0_mt5 = nivel_0_mt5
        self.nivel_1_mt5 = nivel_1_mt5
        self.nivel_2_mt5 = nivel_2_mt5
        self.nivel_3_mt5 = nivel_3_mt5
        self.nivel_4_mt5 = nivel_4_mt5
        self.nivel_5_mt5 = nivel_5_mt5
        self.nivel_6_mt5 = nivel_6_mt5
        self.nivel_7_mt5 = nivel_7_mt5
        self.nivel_8_mt5 = nivel_8_mt5
        self.nivel_9_mt5 = nivel_9_mt5
        self.nivel_10_mt5 = nivel_10_mt5
        self.matriculados_censo_9ef = matriculados_censo_9ef
        self.presentes_9ef = presentes_9ef
        self.taxa_participacao_9ef = taxa_participacao_9ef
        self.nivel_0_lp9 = nivel_0_lp9
        self.nivel_1_lp9 = nivel_1_lp9
        self.nivel_2_lp9 = nivel_2_lp9
        self.nivel_3_lp9 = nivel_3_lp9
        self.nivel_4_lp9 = nivel_4_lp9
        self.nivel_5_lp9 = nivel_5_lp9
        self.nivel_6_lp9 = nivel_6_lp9
        self.nivel_7_lp9 = nivel_7_lp9
        self.nivel_8_lp9 = nivel_8_lp9
        self.nivel_0_mt9 = nivel_0_mt9
        self.nivel_1_mt9 = nivel_1_mt9
        self.nivel_2_mt9 = nivel_2_mt9
        self.nivel_3_mt9 = nivel_3_mt9
        self.nivel_4_mt9 = nivel_4_mt9
        self.nivel_5_mt9 = nivel_5_mt9
        self.nivel_6_mt9 = nivel_6_mt9
        self.nivel_7_mt9 = nivel_7_mt9
        self.nivel_8_mt9 = nivel_8_mt9
        self.nivel_9_mt9 = nivel_9_mt9
        self.matriculados_censo_3em = matriculados_censo_3em
        self.presentes_3em = presentes_3em
        self.taxa_participacao_3em = taxa_participacao_3em
        self.nivel_0_lp3 = nivel_0_lp3
        self.nivel_1_lp3 = nivel_1_lp3
        self.nivel_2_lp3 = nivel_2_lp3
        self.nivel_3_lp3 = nivel_3_lp3
        self.nivel_4_lp3 = nivel_4_lp3
        self.nivel_5_lp3 = nivel_5_lp3
        self.nivel_6_lp3 = nivel_6_lp3
        self.nivel_7_lp3 = nivel_7_lp3
        self.nivel_8_lp3 = nivel_8_lp3
        self.nivel_0_mt3 = nivel_0_mt3
        self.nivel_1_mt3 = nivel_1_mt3
        self.nivel_2_mt3 = nivel_2_mt3
        self.nivel_3_mt3 = nivel_3_mt3
        self.nivel_4_mt3 = nivel_4_mt3
        self.nivel_5_mt3 = nivel_5_mt3
        self.nivel_6_mt3 = nivel_6_mt3
        self.nivel_7_mt3 = nivel_7_mt3
        self.nivel_8_mt3 = nivel_8_mt3
        self.nivel_9_mt3 = nivel_9_mt3
        self.nivel_10_mt3 = nivel_10_mt3
        self.media_5ef_lp = media_5ef_lp
        self.media_5ef_mt = media_5ef_mt
        self.media_9ef_lp = media_9ef_lp
        self.media_9ef_mt = media_9ef_mt
        self.media_3em_lp = media_3em_lp
        self.media_3em_mt = media_3em_mt
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

    def setFormacao_docente_inicial(self, formacao_docente_inicial):
        self.formacao_docente_inicial = formacao_docente_inicial

    def setFormacao_docente_final(self, formacao_docente_final):
        self.formacao_docente_final = formacao_docente_final

    def setFormacao_docente_medio(self, formacao_docente_medio):
        self.formacao_docente_medio = formacao_docente_medio

    def setNivel_socio_economico(self, nivel_socio_economico):
        self.nivel_socio_economico = nivel_socio_economico

    def setMatriculados_censo_5ef(self, matriculados_censo_5ef):
        self.matriculados_censo_5ef = matriculados_censo_5ef

    def setPresentes_5ef(self, presentes_5ef):
        self.presentes_5ef = presentes_5ef

    def setTaxa_participacao_5ef(self, taxa_participacao_5ef):
        self.taxa_participacao_5ef = taxa_participacao_5ef

    def setNivel_0_lp5(self, nivel_0_lp5):
        self.nivel_0_lp5 = nivel_0_lp5

    def setNivel_1_lp5(self, nivel_1_lp5):
        self.nivel_1_lp5 = nivel_1_lp5

    def setNivel_2_lp5(self, nivel_2_lp5):
        self.nivel_2_lp5 = nivel_2_lp5

    def setNivel_3_lp5(self, nivel_3_lp5):
        self.nivel_3_lp5 = nivel_3_lp5

    def setNivel_4_lp5(self, nivel_4_lp5):
        self.nivel_4_lp5 = nivel_4_lp5

    def setNivel_5_lp5(self, nivel_5_lp5):
        self.nivel_5_lp5 = nivel_5_lp5

    def setNivel_6_lp5(self, nivel_6_lp5):
        self.nivel_6_lp5 = nivel_6_lp5

    def setNivel_7_lp5(self, nivel_7_lp5):
        self.nivel_7_lp5 = nivel_7_lp5

    def setNivel_8_lp5(self, nivel_8_lp5):
        self.nivel_8_lp5 = nivel_8_lp5

    def setNivel_9_lp5(self, nivel_9_lp5):
        self.nivel_9_lp5 = nivel_9_lp5

    def setNivel_0_mt5(self, nivel_0_mt5):
        self.nivel_0_mt5 = nivel_0_mt5

    def setNivel_1_mt5(self, nivel_1_mt5):
        self.nivel_1_mt5 = nivel_1_mt5

    def setNivel_2_mt5(self, nivel_2_mt5):
        self.nivel_2_mt5 = nivel_2_mt5

    def setNivel_3_mt5(self, nivel_3_mt5):
        self.nivel_3_mt5 = nivel_3_mt5

    def setNivel_4_mt5(self, nivel_4_mt5):
        self.nivel_4_mt5 = nivel_4_mt5

    def setNivel_5_mt5(self, nivel_5_mt5):
        self.nivel_5_mt5 = nivel_5_mt5

    def setNivel_6_mt5(self, nivel_6_mt5):
        self.nivel_6_mt5 = nivel_6_mt5

    def setNivel_7_mt5(self, nivel_7_mt5):
        self.nivel_7_mt5 = nivel_7_mt5

    def setNivel_8_mt5(self, nivel_8_mt5):
        self.nivel_8_mt5 = nivel_8_mt5

    def setNivel_9_mt5(self, nivel_9_mt5):
        self.nivel_9_mt5 = nivel_9_mt5

    def setNivel_10_mt5(self, nivel_10_mt5):
        self.nivel_10_mt5 = nivel_10_mt5

    def setMatriculados_censo_9ef(self, matriculados_censo_9ef):
        self.matriculados_censo_9ef = matriculados_censo_9ef

    def setPresentes_9ef(self, presentes_9ef):
        self.presentes_9ef = presentes_9ef

    def setTaxa_participacao_9ef(self, taxa_participacao_9ef):
        self.taxa_participacao_9ef = taxa_participacao_9ef

    def setNivel_0_lp9(self, nivel_0_lp9):
        self.nivel_0_lp9 = nivel_0_lp9

    def setNivel_1_lp9(self, nivel_1_lp9):
        self.nivel_1_lp9 = nivel_1_lp9

    def setNivel_2_lp9(self, nivel_2_lp9):
        self.nivel_2_lp9 = nivel_2_lp9

    def setNivel_3_lp9(self, nivel_3_lp9):
        self.nivel_3_lp9 = nivel_3_lp9

    def setNivel_4_lp9(self, nivel_4_lp9):
        self.nivel_4_lp9 = nivel_4_lp9

    def setNivel_5_lp9(self, nivel_5_lp9):
        self.nivel_5_lp9 = nivel_5_lp9

    def setNivel_6_lp9(self, nivel_6_lp9):
        self.nivel_6_lp9 = nivel_6_lp9

    def setNivel_7_lp9(self, nivel_7_lp9):
        self.nivel_7_lp9 = nivel_7_lp9

    def setNivel_8_lp9(self, nivel_8_lp9):
        self.nivel_8_lp9 = nivel_8_lp9

    def setNivel_0_mt9(self, nivel_0_mt9):
        self.nivel_0_mt9 = nivel_0_mt9

    def setNivel_1_mt9(self, nivel_1_mt9):
        self.nivel_1_mt9 = nivel_1_mt9

    def setNivel_2_mt9(self, nivel_2_mt9):
        self.nivel_2_mt9 = nivel_2_mt9

    def setNivel_3_mt9(self, nivel_3_mt9):
        self.nivel_3_mt9 = nivel_3_mt9

    def setNivel_4_mt9(self, nivel_4_mt9):
        self.nivel_4_mt9 = nivel_4_mt9

    def setNivel_5_mt9(self, nivel_5_mt9):
        self.nivel_5_mt9 = nivel_5_mt9

    def setNivel_6_mt9(self, nivel_6_mt9):
        self.nivel_6_mt9 = nivel_6_mt9

    def setNivel_7_mt9(self, nivel_7_mt9):
        self.nivel_7_mt9 = nivel_7_mt9

    def setNivel_8_mt9(self, nivel_8_mt9):
        self.nivel_8_mt9 = nivel_8_mt9

    def setNivel_9_mt9(self, nivel_9_mt9):
        self.nivel_9_mt9 = nivel_9_mt9

    def setMatriculados_censo_3em(self, matriculados_censo_3em):
        self.matriculados_censo_3em = matriculados_censo_3em

    def setPresentes_3em(self, presentes_3em):
        self.presentes_3em = presentes_3em

    def setTaxa_participacao_3em(self, taxa_participacao_3em):
        self.taxa_participacao_3em = taxa_participacao_3em

    def setNivel_0_lp3(self, nivel_0_lp3):
        self.nivel_0_lp3 = nivel_0_lp3

    def setNivel_1_lp3(self, nivel_1_lp3):
        self.nivel_1_lp3 = nivel_1_lp3

    def setNivel_2_lp3(self, nivel_2_lp3):
        self.nivel_2_lp3 = nivel_2_lp3

    def setNivel_3_lp3(self, nivel_3_lp3):
        self.nivel_3_lp3 = nivel_3_lp3

    def setNivel_4_lp3(self, nivel_4_lp3):
        self.nivel_4_lp3 = nivel_4_lp3

    def setNivel_5_lp3(self, nivel_5_lp3):
        self.nivel_5_lp3 = nivel_5_lp3

    def setNivel_6_lp3(self, nivel_6_lp3):
        self.nivel_6_lp3 = nivel_6_lp3

    def setNivel_7_lp3(self, nivel_7_lp3):
        self.nivel_7_lp3 = nivel_7_lp3

    def setNivel_8_lp3(self, nivel_8_lp3):
        self.nivel_8_lp3 = nivel_8_lp3

    def setNivel_0_mt3(self, nivel_0_mt3):
        self.nivel_0_mt3 = nivel_0_mt3

    def setNivel_0_mt3(self, nivel_0_mt3):
        self.nivel_0_mt3 = nivel_0_mt3

    def setNivel_1_mt3(self, nivel_1_mt3):
        self.nivel_1_mt3 = nivel_1_mt3

    def setNivel_2_mt3(self, nivel_2_mt3):
        self.nivel_2_mt3 = nivel_2_mt3

    def setNivel_3_mt3(self, nivel_3_mt3):
        self.nivel_3_mt3 = nivel_3_mt3

    def setNivel_4_mt3(self, nivel_4_mt3):
        self.nivel_4_mt3 = nivel_4_mt3

    def setNivel_5_mt3(self, nivel_5_mt3):
        self.nivel_5_mt3 = nivel_5_mt3

    def setNivel_6_mt3(self, nivel_6_mt3):
        self.nivel_6_mt3 = nivel_6_mt3

    def setNivel_7_mt3(self, nivel_7_mt3):
        self.nivel_7_mt3 = nivel_7_mt3

    def setNivel_8_mt3(self, nivel_8_mt3):
        self.nivel_8_mt3 = nivel_8_mt3

    def setNivel_9_mt3(self, nivel_9_mt3):
        self.nivel_9_mt3 = nivel_9_mt3

    def setNivel_10_mt3(self, nivel_10_mt3):
        self.nivel_10_mt3 = nivel_10_mt3

    def setMedia_5ef_lp(self, media_5ef_lp):
        self.media_5ef_lp = media_5ef_lp

    def setMedia_5ef_mt(self, media_5ef_mt):
        self.media_5ef_mt = media_5ef_mt

    def setMedia_9ef_lp(self, media_9ef_lp):
        self.media_9ef_lp = media_9ef_lp

    def setMedia_3em_lp(self, media_3em_lp):
        self.media_3em_lp = media_3em_lp

    def setMedia_3em_mt(self, media_3em_mt):
        self.media_3em_mt = media_3em_mt

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

    def getFormacao_docente_inicial(self):
        return self.formacao_docente_inicial

    def getFormacao_docente_final(self):
        return self.formacao_docente_final

    def getFormacao_docente_medio(self):
        return self.formacao_docente_medio

    def getNivel_socio_economico(self):
        return self.nivel_socio_economico

    def getMatriculados_censo_5ef(self):
        return self.matriculados_censo_5ef

    def getPresentes_5ef(self):
        return self.presentes_5ef

    def getTaxa_participacao_5ef(self):
        return self.taxa_participacao_5ef

    def getNivel_0_lp5(self):
        return self.nivel_0_lp5

    def getNivel_1_lp5(self):
        return self.nivel_1_lp5

    def getNivel_2_lp5(self):
        return self.nivel_2_lp5

    def getNivel_3_lp5(self):
        return self.nivel_3_lp5

    def getNivel_4_lp5(self):
        return self.nivel_4_lp5

    def getNivel_5_lp5(self):
        return self.nivel_5_lp5

    def getNivel_6_lp5(self):
        return self.nivel_6_lp5

    def getNivel_7_lp5(self):
        return self.nivel_7_lp5

    def getNivel_8_lp5(self):
        return self.nivel_8_lp5

    def getNivel_9_lp5(self):
        return self.nivel_9_lp5

    def getNivel_0_mt5(self):
        return self.nivel_0_mt5

    def getNivel_1_mt5(self):
        return self.nivel_1_mt5

    def getNivel_2_mt5(self):
        return self.nivel_2_mt5

    def getNivel_3_mt5(self):
        return self.nivel_3_mt5

    def getNivel_4_mt5(self):
        return self.nivel_4_mt5

    def getNivel_5_mt5(self):
        return self.nivel_5_mt5

    def getNivel_6_mt5(self):
        return self.nivel_6_mt5

    def getNivel_7_mt5(self):
        return self.nivel_7_mt5

    def getNivel_8_mt5(self):
        return self.nivel_8_mt5

    def getNivel_9_mt5(self):
        return self.nivel_9_mt5

    def getNivel_10_mt5(self):
        return self.nivel_10_mt5

    def getMatriculados_censo_9ef(self):
        return self.matriculados_censo_9ef

    def getPresentes_9ef(self):
        return self.presentes_9ef

    def getTaxa_participacao_9ef(self):
        return self.taxa_participacao_9ef

    def getNivel_0_lp9(self):
        return self.nivel_0_lp9

    def getNivel_1_lp9(self):
        return self.nivel_1_lp9

    def getNivel_2_lp9(self):
        return self.nivel_2_lp9

    def getNivel_3_lp9(self):
        return self.nivel_3_lp9

    def getNivel_4_lp9(self):
        return self.nivel_4_lp9

    def getNivel_5_lp9(self):
        return self.nivel_5_lp9

    def getNivel_6_lp9(self):
        return self.nivel_6_lp9

    def getNivel_7_lp9(self):
        return self.nivel_7_lp9

    def getNivel_8_lp9(self):
        return self.nivel_8_lp9

    def getNivel_0_mt9(self):
        return self.nivel_0_mt9

    def getNivel_1_mt9(self):
        return self.nivel_1_mt9

    def getNivel_2_mt9(self):
        return self.nivel_2_mt9

    def getNivel_3_mt9(self):
        return self.nivel_3_mt9

    def getNivel_4_mt9(self):
        return self.nivel_4_mt9

    def getNivel_5_mt9(self):
        return self.nivel_5_mt9

    def getNivel_6_mt9(self):
        return self.nivel_6_mt9

    def getNivel_7_mt9(self):
        return self.nivel_7_mt9

    def getNivel_8_mt9(self):
        return self.nivel_8_mt9

    def getNivel_9_mt9(self):
        return self.nivel_9_mt9

    def getMatriculados_censo_3em(self):
        return self.matriculados_censo_3em

    def getPresentes_3em(self):
        return self.presentes_3em

    def getTaxa_participacao_3em(self):
        return self.taxa_participacao_3em

    def getNivel_0_lp3(self):
        return self.nivel_0_lp3

    def getNivel_1_lp3(self):
        return self.nivel_1_lp3

    def getNivel_2_lp3(self):
        return self.nivel_2_lp3

    def getNivel_3_lp3(self):
        return self.nivel_3_lp3

    def getNivel_4_lp3(self):
        return self.nivel_4_lp3

    def getNivel_5_lp3(self):
        return self.nivel_5_lp3

    def getNivel_6_lp3(self):
        return self.nivel_6_lp3

    def getNivel_7_lp3(self):
        return self.nivel_7_lp3

    def getNivel_8_lp3(self):
        return self.nivel_8_lp3

    def getNivel_0_mt3(self):
        return self.nivel_0_mt3

    def getNivel_1_mt3(self):
        return self.nivel_1_mt3

    def getNivel_2_mt3(self):
        return self.nivel_2_mt3

    def getNivel_3_mt3(self):
        return self.nivel_3_mt3

    def getNivel_4_mt3(self):
        return self.nivel_4_mt3

    def getNivel_5_mt3(self):
        return self.nivel_5_mt3

    def getNivel_6_mt3(self):
        return self.nivel_6_mt3

    def getNivel_7_mt3(self):
        return self.nivel_7_mt3

    def getNivel_8_mt3(self):
        return self.nivel_8_mt3

    def getNivel_9_mt3(self):
        return self.nivel_9_mt3

    def getNivel_10_mt3(self):
        return self.nivel_10_mt3

    def getMedia_5ef_lp(self):
        return self.media_5ef_lp

    def getMedia_5ef_mt(self):
        return self.media_5ef_mt

    def getMedia_9ef_lp(self):
        return self.media_9ef_lp

    def getMedia_9ef_mt(self):
        return self.media_9ef_mt

    def getMedia_3em_lp(self):
        return self.media_3em_lp

    def getMedia_3em_mt(self):
        return self.media_3em_mt

    def getPreenchimento_questionario(self):
        return self.preenchimento_questionario