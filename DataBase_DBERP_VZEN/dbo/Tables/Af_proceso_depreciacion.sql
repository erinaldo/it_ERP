CREATE TABLE [dbo].[Af_proceso_depreciacion] (
    [IdEmpresa]             INT          NOT NULL,
    [IdActivoFijo]          INT          NOT NULL,
    [IdUsuario]             VARCHAR (25) NOT NULL,
    [Af_costo_compra]       FLOAT (53)   NOT NULL,
    [Af_depreciacion_acum]  FLOAT (53)   NOT NULL,
    [Af_valor_depreciacion] FLOAT (53)   NOT NULL,
    CONSTRAINT [PK_Af_proceso_depreciacion] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdActivoFijo] ASC, [IdUsuario] ASC),
    CONSTRAINT [FK_Af_proceso_depreciacion_Af_Activo_fijo] FOREIGN KEY ([IdEmpresa], [IdActivoFijo]) REFERENCES [dbo].[Af_Activo_fijo] ([IdEmpresa], [IdActivoFijo])
);

