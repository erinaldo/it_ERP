﻿CREATE TABLE [dbo].[tb_sucursal] (
    [IdEmpresa]                INT           NOT NULL,
    [IdSucursal]               INT           NOT NULL,
    [codigo]                   VARCHAR (10)  NULL,
    [Su_Descripcion]           NCHAR (60)    NOT NULL,
    [Su_CodigoEstablecimiento] VARCHAR (30)  NULL,
    [Su_Ubicacion]             VARCHAR (20)  NULL,
    [Su_Ruc]                   VARCHAR (15)  NULL,
    [Su_JefeSucursal]          VARCHAR (100) NULL,
    [Su_Telefonos]             VARCHAR (50)  NULL,
    [Su_Direccion]             VARCHAR (100) NULL,
    [IdUsuario]                VARCHAR (20)  NULL,
    [Fecha_Transac]            DATETIME      NULL,
    [IdUsuarioUltMod]          VARCHAR (20)  NULL,
    [Fecha_UltMod]             DATETIME      NULL,
    [IdUsuarioUltAnu]          VARCHAR (20)  NULL,
    [Fecha_UltAnu]             DATETIME      NULL,
    [nom_pc]                   VARCHAR (50)  NULL,
    [ip]                       VARCHAR (25)  NULL,
    [Estado]                   CHAR (1)      NOT NULL,
    [MotiAnula]                VARCHAR (200) NULL,
    [Es_establecimiento]       BIT           NULL,
    CONSTRAINT [PK_tb_sucursal] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC),
    CONSTRAINT [FK_tb_sucursal_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);



