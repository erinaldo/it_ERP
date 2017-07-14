﻿CREATE TABLE [dbo].[in_Guia_x_traspaso_bodega] (
    [IdEmpresa]          INT           NOT NULL,
    [IdGuia]             NUMERIC (18)  NOT NULL,
    [NumGuia]            VARCHAR (50)  NULL,
    [IdSucursal_Partida] INT           NULL,
    [IdSucursal_Llegada] INT           NULL,
    [Direc_sucu_Partida] VARCHAR (250) NULL,
    [Direc_sucu_Llegada] VARCHAR (250) NULL,
    [IdTransportista]    NUMERIC (18)  NULL,
    [Fecha]              DATETIME      NULL,
    [Fecha_Traslado]     DATETIME      NULL,
    [Fecha_llegada]      DATETIME      NULL,
    [IdMotivo_Traslado]  VARCHAR (15)  NULL,
    [IdUsuario]          VARCHAR (20)  NULL,
    [Fecha_Transac]      DATETIME      NULL,
    [IdUsuarioUltMod]    VARCHAR (20)  NULL,
    [Fecha_UltMod]       DATETIME      NULL,
    [IdUsuarioUltAnu]    VARCHAR (20)  NULL,
    [Fecha_UltAnu]       DATETIME      NULL,
    [nom_pc]             VARCHAR (50)  NULL,
    [ip]                 VARCHAR (25)  NULL,
    [Estado]             CHAR (1)      NOT NULL,
    [Hora_Traslado]      TIME (7)      NULL,
    [Hora_Llegada]       TIME (7)      NULL,
    [CodDocumentoTipo]   VARCHAR (20)  NULL,
    [IdEstablecimiento]  VARCHAR (3)   NULL,
    [IdPuntoEmision]     VARCHAR (3)   NULL,
    [NumDocumento_Guia]  VARCHAR (20)  NULL,
    CONSTRAINT [PK_in_Guia_x_traspaso_bodega] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdGuia] ASC),
    CONSTRAINT [FK_in_Guia_x_traspaso_bodega_in_Catalogo] FOREIGN KEY ([IdMotivo_Traslado]) REFERENCES [dbo].[in_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_in_Guia_x_traspaso_bodega_tb_sis_Documento_Tipo_Talonario] FOREIGN KEY ([IdEmpresa], [CodDocumentoTipo], [IdPuntoEmision], [IdEstablecimiento], [NumDocumento_Guia]) REFERENCES [dbo].[tb_sis_Documento_Tipo_Talonario] ([IdEmpresa], [CodDocumentoTipo], [PuntoEmision], [Establecimiento], [NumDocumento]),
    CONSTRAINT [FK_in_Guia_x_traspaso_bodega_tb_sucursal] FOREIGN KEY ([IdEmpresa], [IdSucursal_Partida]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal]),
    CONSTRAINT [FK_in_Guia_x_traspaso_bodega_tb_sucursal1] FOREIGN KEY ([IdEmpresa], [IdSucursal_Llegada]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal]),
    CONSTRAINT [FK_in_Guia_x_traspaso_bodega_tb_transportista] FOREIGN KEY ([IdEmpresa], [IdTransportista]) REFERENCES [dbo].[tb_transportista] ([IdEmpresa], [IdTransportista])
);





