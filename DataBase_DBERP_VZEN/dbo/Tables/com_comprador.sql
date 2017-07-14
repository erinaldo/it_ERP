﻿CREATE TABLE [dbo].[com_comprador] (
    [IdEmpresa]       INT           NOT NULL,
    [IdComprador]     NUMERIC (18)  NOT NULL,
    [IdUsuario_com]   VARCHAR (50)  NULL,
    [Descripcion]     VARCHAR (50)  NOT NULL,
    [Estado]          NCHAR (10)    NOT NULL,
    [IdPersona]       NUMERIC (18)  NULL,
    [cedula]          VARCHAR (20)  NULL,
    [IdUsuario]       VARCHAR (20)  NULL,
    [Fecha_Transac]   DATETIME      NULL,
    [IdUsuarioUltMod] VARCHAR (20)  NULL,
    [Fecha_UltMod]    DATETIME      NULL,
    [IdUsuarioUltAnu] VARCHAR (20)  NULL,
    [Fecha_UltAnu]    DATETIME      NULL,
    [MotiAnula]       VARCHAR (100) NULL,
    CONSTRAINT [PK_com_comprador] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdComprador] ASC),
    CONSTRAINT [FK_com_comprador_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);



