﻿CREATE TABLE [dbo].[caj_Caja] (
    [IdEmpresa]             INT           NOT NULL,
    [IdCaja]                INT           NOT NULL,
    [IdSucursal]            INT           NULL,
    [ca_Codigo]             VARCHAR (50)  NOT NULL,
    [ca_Descripcion]        VARCHAR (50)  NOT NULL,
    [ca_Moneda]             VARCHAR (50)  NOT NULL,
    [IdCtaCble]             VARCHAR (20)  NULL,
    [IdUsuario]             VARCHAR (50)  NULL,
    [Fecha_Transac]         DATETIME      NULL,
    [IdUsuarioUltMod]       VARCHAR (50)  NULL,
    [Fecha_UltMod]          DATETIME      NULL,
    [nom_pc]                VARCHAR (50)  NULL,
    [ip]                    VARCHAR (50)  NULL,
    [Estado]                VARCHAR (1)   NULL,
    [IdUsuario_Responsable] VARCHAR (50)  NULL,
    [IdUsuarioUltAnu]       VARCHAR (50)  NULL,
    [Fecha_UltAnu]          DATETIME      NULL,
    [MotivoAnu]             VARCHAR (300) NULL,
    [IdMoneda]              INT           NULL,
    [IdPunto_cargo]         INT           NULL,
    [IdPunto_cargo_grupo]   INT           NULL,
    CONSTRAINT [PK_ba_Caja] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCaja] ASC),
    CONSTRAINT [FK_caj_Caja_ct_plancta] FOREIGN KEY ([IdEmpresa], [IdCtaCble]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_caj_Caja_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa]),
    CONSTRAINT [FK_caj_Caja_tb_sucursal] FOREIGN KEY ([IdEmpresa], [IdSucursal]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal])
);



