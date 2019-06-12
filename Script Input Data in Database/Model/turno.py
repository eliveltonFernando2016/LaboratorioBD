class Turno:
    def __init__(self, id_turno, nome_turno):
        self.id_turno = id_turno
        self.nome_turno = nome_turno

    def setId_turno(self, id_turno):
        self.id_turno = id_turno

    def setNome_turno(self, nome_turno):
        self.nome_turno = nome_turno

    def getId_turno(self):
        return self.id_turno

    def getNome_turno(self):
        return  self.nome_turno