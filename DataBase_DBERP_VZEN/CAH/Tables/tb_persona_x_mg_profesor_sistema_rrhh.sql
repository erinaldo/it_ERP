CREATE TABLE [CAH].[tb_persona_x_mg_profesor_sistema_rrhh] (
    [IdPersona_Erp]           NUMERIC (18)  NOT NULL,
    [IdProfesor_Sistema_RRHH] NUMERIC (18)  NOT NULL,
    [nom_persona]             VARCHAR (850) NOT NULL,
    [nota1]                   VARCHAR (850) NULL,
    [nota2]                   VARCHAR (850) NULL,
    [fecha_insert]            DATETIME      NULL,
    [fecha_update]            DATETIME      NULL,
    CONSTRAINT [PK_tb_persona_x_mg_profesor_sistema_rrhh] PRIMARY KEY CLUSTERED ([IdPersona_Erp] ASC, [IdProfesor_Sistema_RRHH] ASC)
);

