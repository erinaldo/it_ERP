﻿CREATE TABLE [dbo].[in_subgrupo] (
    [IdEmpresa]              INT           NOT NULL,
    [IdCategoria]            VARCHAR (25)  NOT NULL,
    [IdLinea]                INT           NOT NULL,
    [IdGrupo]                INT           NOT NULL,
    [IdSubgrupo]             INT           NOT NULL,
    [abreviatura]            VARCHAR (10)  NOT NULL,
    [cod_subgrupo]           VARCHAR (50)  NOT NULL,
    [nom_subgrupo]           VARCHAR (150) NOT NULL,
    [observacion]            VARCHAR (150) NOT NULL,
    [Estado]                 CHAR (1)      NOT NULL,
    [IdUsuario]              VARCHAR (20)  NOT NULL,
    [Fecha_Transac]          DATETIME      NOT NULL,
    [nom_pc]                 VARCHAR (50)  NULL,
    [ip]                     VARCHAR (25)  NULL,
    [MotiAnula]              VARCHAR (200) NULL,
    [IdUsuarioUltMod]        VARCHAR (20)  NULL,
    [Fecha_UltMod]           DATETIME      NULL,
    [IdUsuarioUltAnu]        VARCHAR (20)  NULL,
    [Fecha_UltAnu]           DATETIME      NULL,
    [IdCtaCtble_Inve]        VARCHAR (20)  NULL,
    [IdCtaCtble_Costo]       VARCHAR (20)  NULL,
    [IdCtaCtble_Gasto_x_cxp] VARCHAR (20)  NULL,
    [IdCtaCble_Vta]          VARCHAR (20)  NULL,
    [IdCtaCble_Des0]         VARCHAR (20)  NULL,
    [IdCtaCble_Dev0]         VARCHAR (20)  NULL,
    CONSTRAINT [PK_in_subgrupo] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCategoria] ASC, [IdLinea] ASC, [IdGrupo] ASC, [IdSubgrupo] ASC),
    CONSTRAINT [FK_in_subgrupo_ct_plancta] FOREIGN KEY ([IdEmpresa], [IdCtaCtble_Costo]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_subgrupo_ct_plancta1] FOREIGN KEY ([IdEmpresa], [IdCtaCtble_Inve]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_subgrupo_ct_plancta11] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Dev0]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_subgrupo_ct_plancta2] FOREIGN KEY ([IdEmpresa], [IdCtaCtble_Gasto_x_cxp]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_subgrupo_ct_plancta3] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Vta]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_subgrupo_ct_plancta9] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Des0]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_subgrupo_in_grupo] FOREIGN KEY ([IdEmpresa], [IdCategoria], [IdLinea], [IdGrupo]) REFERENCES [dbo].[in_grupo] ([IdEmpresa], [IdCategoria], [IdLinea], [IdGrupo])
);





