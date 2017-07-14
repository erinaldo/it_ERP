﻿CREATE TABLE [dbo].[in_Motivo_Inven] (
    [IdEmpresa]          INT           NOT NULL,
    [IdMotivo_Inv]       INT           NOT NULL,
    [Cod_Motivo_Inv]     VARCHAR (20)  NOT NULL,
    [Desc_mov_inv]       VARCHAR (250) NOT NULL,
    [Genera_Movi_Inven]  CHAR (1)      NOT NULL,
    [Genera_CXP]         CHAR (1)      NOT NULL,
    [Exigir_Punto_Cargo] CHAR (1)      NULL,
    [estado]             CHAR (1)      NOT NULL,
    [Fecha_Transac]      DATETIME      NULL,
    [Fecha_UltMod]       DATETIME      NULL,
    [IdUsuarioUltMod]    VARCHAR (20)  NULL,
    [FechaHoraAnul]      DATETIME      NULL,
    [IdUsuarioUltAnu]    VARCHAR (20)  NULL,
    [MotivoAnulacion]    VARCHAR (250) NULL,
    [IdCtaCble_Inven]    VARCHAR (20)  NULL,
    [IdCtaCble_Costo]    VARCHAR (20)  NULL,
    [es_Inven_o_Consumo] VARCHAR (15)  NULL,
    [Tipo_Ing_Egr]       VARCHAR (15)  NULL,
    CONSTRAINT [PK_in_Motivo_Inven] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdMotivo_Inv] ASC),
    CONSTRAINT [FK_in_Motivo_Inven_in_Catalogo] FOREIGN KEY ([es_Inven_o_Consumo]) REFERENCES [dbo].[in_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_in_Motivo_Inven_in_Catalogo1] FOREIGN KEY ([Tipo_Ing_Egr]) REFERENCES [dbo].[in_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_in_Motivo_Inven_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);







