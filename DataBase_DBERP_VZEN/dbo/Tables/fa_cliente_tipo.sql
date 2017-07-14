﻿CREATE TABLE [dbo].[fa_cliente_tipo] (
    [IdEmpresa]               INT           NOT NULL,
    [Idtipo_cliente]          INT           NOT NULL,
	[Cod_cliente_tipo]		VARCHAR (10)  NOT NULL,
    [Descripcion_tip_cliente] VARCHAR (50)  NOT NULL,
	[IdCtaCble_CXC_Anticipo]  VARCHAR (20)  NULL,
    [IdCtaCble_CXC_Con]       VARCHAR (20)  NULL,
    [IdCtaCble_CXC_Cred]      VARCHAR (20)  NULL,
    [IdUsuario]               VARCHAR (20)  NULL,
    [Fecha_Transac]           DATETIME      NULL,
    [IdUsuarioUltMod]         VARCHAR (20)  NULL,
    [Fecha_UltMod]            DATETIME      NULL,
    [IdUsuarioUltAnu]         VARCHAR (20)  NULL,
    [Fecha_UltAnu]            DATETIME      NULL,
    [MotivoAnula]             VARCHAR (100) NULL,
    [nom_pc]                  VARCHAR (50)  NULL,
    [ip]                      VARCHAR (25)  NULL,
    [estado]                  CHAR (1)      NOT NULL,
    CONSTRAINT [PK_fa_cliente_tipo] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [Idtipo_cliente] ASC),
    CONSTRAINT [FK_fa_cliente_tipo_ct_plancta] FOREIGN KEY ([IdEmpresa], [IdCtaCble_CXC_Con]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_fa_cliente_tipo_ct_plancta1] FOREIGN KEY ([IdEmpresa], [IdCtaCble_CXC_Cred]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_fa_cliente_tipo_ct_plancta2] FOREIGN KEY ([IdEmpresa], [IdCtaCble_CXC_Anticipo]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble])
);

