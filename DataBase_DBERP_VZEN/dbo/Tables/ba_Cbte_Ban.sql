

CREATE TABLE [dbo].[ba_Cbte_Ban] (
    [IdEmpresa]                INT           NOT NULL,
    [IdCbteCble]               NUMERIC (18)  NOT NULL,
    [IdTipocbte]               INT           NOT NULL,
    [Cod_Cbtecble]             VARCHAR (50)  NOT NULL,
    [IdPeriodo]                INT           NOT NULL,
    [IdBanco]                  INT           NOT NULL,
    [IdProveedor]              NUMERIC (18)  NULL,
    [cb_Fecha]                 DATE          NOT NULL,
    [cb_Observacion]           VARCHAR (MAX) NOT NULL,
    [cb_secuencia]             NUMERIC (18)  NOT NULL,
    [cb_Valor]                 FLOAT (53)    NOT NULL,
    [cb_Cheque]                VARCHAR (50)  NULL,
    [cb_ChequeImpreso]         CHAR (1)      NOT NULL,
    [cb_FechaCheque]           DATE          NULL,
    [IdUsuario]                VARCHAR (50)  NOT NULL,
    [IdUsuario_Anu]            VARCHAR (50)  NULL,
    [FechaAnulacion]           DATETIME      NULL,
    [Fecha_Transac]            DATETIME      NOT NULL,
    [Fecha_UltMod]             DATETIME      NULL,
    [IdUsuarioUltMod]          VARCHAR (50)  NULL,
    [Estado]                   CHAR (1)      NOT NULL,
    [MotivoAnulacion]          VARCHAR (200) NULL,
    [ip]                       VARCHAR (25)  NULL,
    [nom_pc]                   VARCHAR (50)  NULL,
    [IdPersona_Girado_a]       NUMERIC (18)  NULL,
    [cb_giradoA]               VARCHAR (150) NULL,
    [cb_ciudadChq]             VARCHAR (25)  NULL,
    [IdCbteCble_Anulacion]     NUMERIC (18)  NULL,
    [IdTipoCbte_Anulacion]     INT           NULL,
    [IdTipoFlujo]              NUMERIC (18)  NULL,
    [IdTipoNota]               INT           NULL,
    [IdTransaccion]            VARCHAR (MAX) NULL,
    [Por_Anticipo]             CHAR (1)      NULL,
    [PosFechado]               CHAR (1)      NULL,
    [ValorEnLetras]            VARCHAR (MAX) NULL,
    [IdSucursal]               INT           NULL,
    [IdEstado_Cbte_Ban_cat]    VARCHAR (50)  NULL,
    [IdEstado_Preaviso_ch_cat] VARCHAR (50)  NULL,
    [IdEstado_cheque_cat]      VARCHAR (50)  NULL,
    CONSTRAINT [PK_ba_Cbte_Ban] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCbteCble] ASC, [IdTipocbte] ASC),
    CONSTRAINT [FK_ba_Cbte_Ban_ba_Banco_Cuenta] FOREIGN KEY ([IdEmpresa], [IdBanco]) REFERENCES [dbo].[ba_Banco_Cuenta] ([IdEmpresa], [IdBanco]),
    CONSTRAINT [FK_ba_Cbte_Ban_ba_Catalogo] FOREIGN KEY ([IdEstado_Cbte_Ban_cat]) REFERENCES [dbo].[ba_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_ba_Cbte_Ban_ba_Catalogo1] FOREIGN KEY ([IdEstado_cheque_cat]) REFERENCES [dbo].[ba_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_ba_Cbte_Ban_ba_tipo_nota] FOREIGN KEY ([IdEmpresa], [IdTipoNota]) REFERENCES [dbo].[ba_tipo_nota] ([IdEmpresa], [IdTipoNota]),
    CONSTRAINT [FK_ba_Cbte_Ban_ba_TipoFlujo] FOREIGN KEY ([IdEmpresa], [IdTipoFlujo]) REFERENCES [dbo].[ba_TipoFlujo] ([IdEmpresa], [IdTipoFlujo]),
    CONSTRAINT [FK_ba_Cbte_Ban_ct_cbtecble] FOREIGN KEY ([IdEmpresa], [IdTipocbte], [IdCbteCble]) REFERENCES [dbo].[ct_cbtecble] ([IdEmpresa], [IdTipoCbte], [IdCbteCble]),
    CONSTRAINT [FK_ba_Cbte_Ban_ct_cbtecble1] FOREIGN KEY ([IdEmpresa], [IdTipoCbte_Anulacion], [IdCbteCble_Anulacion]) REFERENCES [dbo].[ct_cbtecble] ([IdEmpresa], [IdTipoCbte], [IdCbteCble]),
    CONSTRAINT [FK_ba_Cbte_Ban_ct_periodo] FOREIGN KEY ([IdEmpresa], [IdPeriodo]) REFERENCES [dbo].[ct_periodo] ([IdEmpresa], [IdPeriodo]),
    CONSTRAINT [FK_ba_Cbte_Ban_tb_ciudad] FOREIGN KEY ([cb_ciudadChq]) REFERENCES [dbo].[tb_ciudad] ([IdCiudad]),
    CONSTRAINT [FK_ba_Cbte_Ban_tb_persona] FOREIGN KEY ([IdPersona_Girado_a]) REFERENCES [dbo].[tb_persona] ([IdPersona]),
    CONSTRAINT [FK_ba_Cbte_Ban_tb_sucursal] FOREIGN KEY ([IdEmpresa], [IdSucursal]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal])
);



GO



GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO


GO
CREATE NONCLUSTERED INDEX [IX_ba_Cbte_Ban]
    ON [dbo].[ba_Cbte_Ban]([IdEmpresa] ASC, [IdTipocbte] ASC, [IdCbteCble] ASC, [IdBanco] ASC);

