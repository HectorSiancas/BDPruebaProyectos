
EXEC sp_RegistrarDatoHidraulico
    @id_proyecto = 1,
    @caudal = 120.50,
    @perdida_carga = 15.80,
    @periodo_retorno = 25;