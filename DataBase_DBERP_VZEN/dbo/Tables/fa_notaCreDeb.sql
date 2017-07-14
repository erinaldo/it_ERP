﻿CREATE TABLE [dbo].[fa_notaCreDeb] (
    [IdEmpresa]              INT            NOT NULL,
    [IdSucursal]             INT            NOT NULL,
    [IdBodega]               INT            NOT NULL,
    [IdNota]                 NUMERIC (18)   NOT NULL,
    [CodNota]                VARCHAR (50)   NOT NULL,
    [CreDeb]                 CHAR (3)       NOT NULL,
    [CodDocumentoTipo]       VARCHAR (20)   NULL,
    [Serie1]                 VARCHAR (3)    NULL,
    [Serie2]                 VARCHAR (3)    NULL,
    [NumNota_Impresa]        VARCHAR (20)   NULL,
    [NumAutorizacion]        VARCHAR (50)   NULL,
    [Fecha_Autorizacion]     DATETIME       NULL,
    [IdCliente]              NUMERIC (18)   NOT NULL,
    [IdVendedor]             INT            NOT NULL,
    [no_fecha]               DATETIME       NOT NULL,
    [no_fecha_venc]          DATETIME       NULL,
    [fecha_Ctble]            DATETIME       NULL,
    [no_dev_venta]           CHAR (7)       NULL,
    [IdTipoNota]             INT            NOT NULL,
    [sc_observacion]         VARCHAR (1000) NOT NULL,
    [IdUsuario]              VARCHAR (20)   NULL,
    [IdDevolucion]           NUMERIC (18)   NULL,
    [IdUsuarioUltMod]        VARCHAR (20)   NULL,
    [Fecha_UltMod]           DATETIME       NULL,
    [IdUsuarioUltAnu]        VARCHAR (20)   NULL,
    [Fecha_UltAnu]           DATETIME       NULL,
    [MotiAnula]              VARCHAR (200)  NULL,
    [nom_pc]                 VARCHAR (50)   NULL,
    [ip]                     VARCHAR (25)   NULL,
    [Estado]                 CHAR (1)       NOT NULL,
    [IdDpto]                 INT            NULL,
    [IdSolicitante]          NUMERIC (18)   NULL,
    [flete]                  FLOAT (53)     NULL,
    [interes]                FLOAT (53)     NULL,
    [valor1]                 FLOAT (53)     NULL,
    [valor2]                 FLOAT (53)     NULL,
    [NaturalezaNota]         CHAR (3)       NULL,
    [seguro]                 FLOAT (53)     NULL,
    [IdCaja]                 INT            NOT NULL,
    [IdCtaCble_TipoNota]     VARCHAR (20)   NULL,
    [IdEmpresa_fac_doc_mod]  INT            NULL,
    [IdSucursal_fac_doc_mod] INT            NULL,
    [IdBodega_fac_doc_mod]   INT            NULL,
    [IdCbteVta_fac_doc_mod]  NUMERIC (18)   NULL,
    [IdPuntoVta]             INT            NULL,
    CONSTRAINT [PK_fa_notaCreDeb] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdBodega] ASC, [IdNota] ASC),
    CONSTRAINT [FK_fa_notaCreDeb_caj_Caja] FOREIGN KEY ([IdEmpresa], [IdCaja]) REFERENCES [dbo].[caj_Caja] ([IdEmpresa], [IdCaja]),
    CONSTRAINT [FK_fa_notaCreDeb_ct_plancta] FOREIGN KEY ([IdEmpresa], [IdCtaCble_TipoNota]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_fa_notaCreDeb_fa_cliente] FOREIGN KEY ([IdEmpresa], [IdCliente]) REFERENCES [dbo].[fa_cliente] ([IdEmpresa], [IdCliente]),
    CONSTRAINT [FK_fa_notaCreDeb_fa_PuntoVta] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdPuntoVta]) REFERENCES [dbo].[fa_PuntoVta] ([IdEmpresa], [IdSucursal], [IdPuntoVta]),
    CONSTRAINT [FK_fa_notaCreDeb_fa_TipoNota] FOREIGN KEY ([IdTipoNota]) REFERENCES [dbo].[fa_TipoNota] ([IdTipoNota]),
    CONSTRAINT [FK_fa_notaCreDeb_fa_Vendedor] FOREIGN KEY ([IdEmpresa], [IdVendedor]) REFERENCES [dbo].[fa_Vendedor] ([IdEmpresa], [IdVendedor]),
    CONSTRAINT [FK_fa_notaCreDeb_tb_bodega] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdBodega]) REFERENCES [dbo].[tb_bodega] ([IdEmpresa], [IdSucursal], [IdBodega]),
    CONSTRAINT [FK_fa_notaCreDeb_tb_sis_Documento_Tipo_Talonario] FOREIGN KEY ([IdEmpresa], [CodDocumentoTipo], [Serie2], [Serie1], [NumNota_Impresa]) REFERENCES [dbo].[tb_sis_Documento_Tipo_Talonario] ([IdEmpresa], [CodDocumentoTipo], [PuntoEmision], [Establecimiento], [NumDocumento])
);












GO
CREATE NONCLUSTERED INDEX [IX_fa_notaCreDeb]
    ON [dbo].[fa_notaCreDeb]([IdEmpresa] ASC, [CodDocumentoTipo] ASC, [Serie1] ASC, [Serie2] ASC, [NumNota_Impresa] ASC);

