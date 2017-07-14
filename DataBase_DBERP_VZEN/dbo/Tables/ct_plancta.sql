﻿CREATE TABLE [dbo].[ct_plancta] (
    [IdEmpresa]            INT           NOT NULL,
    [IdCtaCble]            VARCHAR (20)  NOT NULL,
    [pc_Cuenta]            VARCHAR (150) NOT NULL,
    [IdCtaCblePadre]       VARCHAR (20)  NULL,
    [IdCatalogo]           DECIMAL (10)  NULL,
    [pc_Naturaleza]        CHAR (1)      NOT NULL,
    [IdNivelCta]           INT           NOT NULL,
    [IdGrupoCble]          VARCHAR (5)   NOT NULL,
    [IdTipoCtaCble]        VARCHAR (10)  NULL,
    [pc_Estado]            CHAR (1)      NOT NULL,
    [pc_EsMovimiento]      CHAR (1)      NOT NULL,
    [pc_es_flujo_efectivo] CHAR (1)      NULL,
    [pc_clave_corta]       VARCHAR (15)  NULL,
    [Fecha_Transac]        DATETIME      NULL,
    [IdUsuario]            VARCHAR (50)  NULL,
    [IdUsuarioUltMod]      VARCHAR (50)  NULL,
    [Fecha_UltMod]         DATETIME      NULL,
    [IdUsuarioUltAnu]      VARCHAR (50)  NULL,
    [Fecha_UltAnu]         DATETIME      NULL,
    [MotivoAnulacion]      VARCHAR (150) NULL,
    [nom_pc]               VARCHAR (50)  NULL,
    [ip]                   VARCHAR (50)  NULL,
    [IdTipo_Gasto]         INT           NULL,
    CONSTRAINT [PK__ct_planc__86F41E99182C9B23] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCtaCble] ASC),
    CONSTRAINT [FK_ct_plancta_ct_grupo_x_Tipo_Gasto] FOREIGN KEY ([IdEmpresa], [IdTipo_Gasto]) REFERENCES [dbo].[ct_grupo_x_Tipo_Gasto] ([IdEmpresa], [IdTipo_Gasto]),
    CONSTRAINT [FK_ct_plancta_ct_grupocble] FOREIGN KEY ([IdGrupoCble]) REFERENCES [dbo].[ct_grupocble] ([IdGrupoCble]),
    CONSTRAINT [FK_ct_plancta_ct_plancta] FOREIGN KEY ([IdEmpresa], [IdCtaCblePadre]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_ct_plancta_ct_plancta_nivel] FOREIGN KEY ([IdEmpresa], [IdNivelCta]) REFERENCES [dbo].[ct_plancta_nivel] ([IdEmpresa], [IdNivelCta]),
    CONSTRAINT [FK_ct_plancta_ct_tipo_ctacble] FOREIGN KEY ([IdTipoCtaCble]) REFERENCES [dbo].[ct_tipo_ctacble] ([IdTipoCtaCble]),
    CONSTRAINT [FK_ct_plancta_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);






GO
CREATE NONCLUSTERED INDEX [IX_ct_plancta]
    ON [dbo].[ct_plancta]([IdEmpresa] ASC, [IdCtaCble] ASC);

