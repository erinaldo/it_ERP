﻿CREATE TABLE [dbo].[cp_reembolso] (
    [IdEmpresa]               INT          NOT NULL,
    [IdCbteCble_Ogiro]        NUMERIC (18) NOT NULL,
    [IdTipoCbte_Ogiro]        INT          NOT NULL,
    [IdReembolso]             NUMERIC (18) NOT NULL,
    [IdProveedor]             NUMERIC (18) NULL,
    [TipoIdProveedor]         VARCHAR (50) NULL,
    [IdentificacionProveedor] VARCHAR (50) NULL,
    [TipoDoc_CodSRI]          VARCHAR (5)  NULL,
    [Establecimiento]         VARCHAR (25) NULL,
    [Punto_Emision]           VARCHAR (25) NULL,
    [Secuencial]              VARCHAR (25) NULL,
    [Autorizacion]            VARCHAR (25) NULL,
    [Fecha_Emision]           DATE         NULL,
    [TarifaIVAcero]           FLOAT (53)   NULL,
    [TarifaIVADiferentecero]  FLOAT (53)   NULL,
    [TarifaNoObjetoIVA]       FLOAT (53)   NULL,
    [MontoICE]                FLOAT (53)   NULL,
    [MontoIVA]                FLOAT (53)   NULL,
    [baseImponible]           FLOAT (53)   NULL,
    [Total]                   FLOAT (53)   NULL,
    CONSTRAINT [PK_cp_reembolso] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCbteCble_Ogiro] ASC, [IdTipoCbte_Ogiro] ASC, [IdReembolso] ASC),
    CONSTRAINT [FK_cp_reembolso_cp_orden_giro] FOREIGN KEY ([IdEmpresa], [IdCbteCble_Ogiro], [IdTipoCbte_Ogiro]) REFERENCES [dbo].[cp_orden_giro] ([IdEmpresa], [IdCbteCble_Ogiro], [IdTipoCbte_Ogiro]),
    CONSTRAINT [FK_cp_reembolso_cp_proveedor] FOREIGN KEY ([IdEmpresa], [IdProveedor]) REFERENCES [dbo].[cp_proveedor] ([IdEmpresa], [IdProveedor])
);



