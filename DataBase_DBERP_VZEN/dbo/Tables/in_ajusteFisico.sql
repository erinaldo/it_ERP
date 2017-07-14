﻿CREATE TABLE [dbo].[in_ajusteFisico] (
    [IdEmpresa]             INT            NOT NULL,
    [IdAjusteFisico]        NUMERIC (18)   NOT NULL,
    [CodAjusteFisico]       VARCHAR (20)   NOT NULL,
    [IdSucursal]            INT            NOT NULL,
    [IdBodega]              INT            NOT NULL,
    [IdMovi_inven_tipo_Ing] INT            NULL,
    [IdNumMovi_Ing]         NUMERIC (18)   NULL,
    [IdMovi_inven_tipo_Egr] INT            NULL,
    [IdNumMovi_Egr]         NUMERIC (18)   NULL,
    [Observacion]           VARCHAR (300)  NOT NULL,
    [Fecha]                 DATETIME       NOT NULL,
    [Estado]                CHAR (1)       NOT NULL,
    [IdUsuarioUltMod]       VARCHAR (20)   NULL,
    [Fecha_UltMod]          DATETIME       NULL,
    [nom_pc]                VARCHAR (20)   NULL,
    [ip]                    VARCHAR (25)   NULL,
    [motivo_anula]          VARCHAR (1000) NULL,
    [FechaAnulacion]        DATETIME       NULL,
    [IdUsuarioAnulacion]    VARCHAR (20)   NULL,
    [IdEstadoAprobacion]    VARCHAR (15)   NULL,
    CONSTRAINT [PK_in_AjusteFisico] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdAjusteFisico] ASC),
    CONSTRAINT [FK_in_ajusteFisico_in_Catalogo] FOREIGN KEY ([IdEstadoAprobacion]) REFERENCES [dbo].[in_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_in_ajusteFisico_tb_bodega] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdBodega]) REFERENCES [dbo].[tb_bodega] ([IdEmpresa], [IdSucursal], [IdBodega])
);





