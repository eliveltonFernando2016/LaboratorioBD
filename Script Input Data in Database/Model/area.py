class Area:
    def __init__(self, id_area, codigo):
        self.id_area = id_area
        self.codigo = codigo

    def setId_area(self, id_area):
        self.id_area = id_area

    def setCodigo(self, codigo):
        self.codigo = codigo

    def getId_area(self):
        return self.id_area

    def getCodigo(self):
        return self.codigo