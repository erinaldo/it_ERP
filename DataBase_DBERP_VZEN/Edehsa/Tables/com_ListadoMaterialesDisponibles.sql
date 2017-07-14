CREATE TABLE [Edehsa].[com_ListadoMaterialesDisponibles] (
    [IdEmpresa]                      INT           NOT NULL,
    [IdListadoMaterialesDisponibles] NUMERIC (18)  NOT NULL,
    [CodObra]                        VARCHAR (20)  NOT NULL,
    [ot_IdSucursal]                  INT           NOT NULL,
    [FechaReg]                       DATETIME      NOT NULL,
    [Estado]                         CHAR (1)      NOT NULL,
    [Usuario]                        VARCHAR (20)  NOT NULL,
    [Motivo]                         VARCHAR (50)  NOT NULL,
    [lm_Observacion]                 VARCHAR (500) NULL,
    CONSTRAINT [PK_com_ListadoMaterialesDisponibles] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdListadoMaterialesDisponibles] ASC)
);

