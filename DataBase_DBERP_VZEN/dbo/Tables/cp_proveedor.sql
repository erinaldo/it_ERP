﻿CREATE TABLE [dbo].[cp_proveedor] (
    [IdEmpresa]                  INT           NOT NULL,
    [IdProveedor]                NUMERIC (18)  NOT NULL,
    [IdPersona]                  NUMERIC (18)  NOT NULL,
    [pr_codigo]                  VARCHAR (50)  NOT NULL,
    [pr_nombre]                  VARCHAR (100) NULL,
    [pr_girar_cheque_a]          VARCHAR (100) NULL,
    [IdTipoServicio]             VARCHAR (25)  NOT NULL,
    [IdCtaCble_CXP]              VARCHAR (20)  NULL,
    [IdTipoGasto]                VARCHAR (25)  NOT NULL,
    [pr_contribuyenteEspecial]   CHAR (1)      NULL,
    [pr_plazo]                   INT           NULL,
    [representante_legal]        VARCHAR (250) NULL,
    [pr_estado]                  VARCHAR (1)   NULL,
    [IdCiudad]                   VARCHAR (25)  NOT NULL,
    [pr_nacionalidad]            VARCHAR (50)  NULL,
    [idCredito_Predeter]         INT           NULL,
    [codigoSRI_ICE_Predeter]     INT           NULL,
    [codigoSRI_101_Predeter]     INT           NULL,
    [IdUsuario]                  VARCHAR (20)  NULL,
    [Fecha_Transac]              DATETIME      NULL,
    [IdUsuarioUltMod]            VARCHAR (20)  NULL,
    [Fecha_UltMod]               DATETIME      NULL,
    [IdUsuarioUltAnu]            VARCHAR (20)  NULL,
    [Fecha_UltAnu]               DATETIME      NULL,
    [nom_pc]                     VARCHAR (50)  NULL,
    [ip]                         VARCHAR (25)  NULL,
    [contacto]                   VARCHAR (200) NULL,
    [responsable]                VARCHAR (100) NULL,
    [comentario]                 VARCHAR (300) NULL,
    [IdCentroCosot]              VARCHAR (20)  NULL,
    [IdCtaCble_Anticipo]         VARCHAR (20)  NULL,
    [IdCtaCble_Gasto]            VARCHAR (20)  NULL,
    [IdClaseProveedor]           INT           NOT NULL,
    [MotivoAnulacion]            VARCHAR (200) NULL,
    [IdTipoCta_acreditacion_cat] VARCHAR (25)  NULL,
    [num_cta_acreditacion]       VARCHAR (50)  NULL,
    [IdBanco_acreditacion]       INT           NULL,
    [IdPunto_cargo]              INT           NULL,
    [IdPunto_cargo_grupo]        INT           NULL,
    [es_empresa_relacionada]     BIT           NULL,
    CONSTRAINT [PK_cp_proveedor] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdProveedor] ASC),
    CONSTRAINT [FK_cp_proveedor_cp_catalogo] FOREIGN KEY ([IdTipoServicio]) REFERENCES [dbo].[cp_catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_cp_proveedor_cp_catalogo1] FOREIGN KEY ([IdTipoGasto]) REFERENCES [dbo].[cp_catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_cp_proveedor_cp_catalogo2] FOREIGN KEY ([IdTipoCta_acreditacion_cat]) REFERENCES [dbo].[cp_catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_cp_proveedor_cp_codigo_SRI] FOREIGN KEY ([idCredito_Predeter]) REFERENCES [dbo].[cp_codigo_SRI] ([IdCodigo_SRI]),
    CONSTRAINT [FK_cp_proveedor_cp_codigo_SRI1] FOREIGN KEY ([codigoSRI_ICE_Predeter]) REFERENCES [dbo].[cp_codigo_SRI] ([IdCodigo_SRI]),
    CONSTRAINT [FK_cp_proveedor_cp_codigo_SRI2] FOREIGN KEY ([codigoSRI_101_Predeter]) REFERENCES [dbo].[cp_codigo_SRI] ([IdCodigo_SRI]),
    CONSTRAINT [FK_cp_proveedor_cp_proveedor_clase] FOREIGN KEY ([IdEmpresa], [IdClaseProveedor]) REFERENCES [dbo].[cp_proveedor_clase] ([IdEmpresa], [IdClaseProveedor]),
    CONSTRAINT [FK_cp_proveedor_ct_plancta] FOREIGN KEY ([IdEmpresa], [IdCtaCble_CXP]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_cp_proveedor_ct_plancta1] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Anticipo]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_cp_proveedor_ct_plancta2] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Gasto]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_cp_proveedor_ct_punto_cargo] FOREIGN KEY ([IdEmpresa], [IdPunto_cargo]) REFERENCES [dbo].[ct_punto_cargo] ([IdEmpresa], [IdPunto_cargo]),
    CONSTRAINT [FK_cp_proveedor_ct_punto_cargo_grupo] FOREIGN KEY ([IdEmpresa], [IdPunto_cargo_grupo]) REFERENCES [dbo].[ct_punto_cargo_grupo] ([IdEmpresa], [IdPunto_cargo_grupo]),
    CONSTRAINT [FK_cp_proveedor_tb_banco] FOREIGN KEY ([IdBanco_acreditacion]) REFERENCES [dbo].[tb_banco] ([IdBanco]),
    CONSTRAINT [FK_cp_proveedor_tb_ciudad] FOREIGN KEY ([IdCiudad]) REFERENCES [dbo].[tb_ciudad] ([IdCiudad]),
    CONSTRAINT [FK_cp_proveedor_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa]),
    CONSTRAINT [FK_cp_proveedor_tb_persona] FOREIGN KEY ([IdPersona]) REFERENCES [dbo].[tb_persona] ([IdPersona])
);








GO
CREATE NONCLUSTERED INDEX [IX_cp_proveedor]
    ON [dbo].[cp_proveedor]([IdEmpresa] ASC, [IdProveedor] ASC, [IdPersona] ASC);

