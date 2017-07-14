﻿CREATE TABLE [dbo].[cp_Aprobacion_Ing_Bod_x_OC] (
    [IdEmpresa]                INT           NOT NULL,
    [IdAprobacion]             NUMERIC (18)  NOT NULL,
    [Fecha_aprobacion]         DATETIME      NOT NULL,
    [IdEmpresa_Ogiro]          INT           NULL,
    [IdCbteCble_Ogiro]         NUMERIC (18)  NULL,
    [IdTipoCbte_Ogiro]         INT           NULL,
    [IdOrden_giro_Tipo]        VARCHAR (5)   NOT NULL,
    [IdIden_credito]           INT           NOT NULL,
    [IdProveedor]              NUMERIC (18)  NOT NULL,
    [Observacion]              VARCHAR (350) NOT NULL,
    [Serie]                    VARCHAR (3)   NOT NULL,
    [Serie2]                   VARCHAR (3)   NOT NULL,
    [num_documento]            VARCHAR (50)  NOT NULL,
    [num_auto_Proveedor]       VARCHAR (50)  NOT NULL,
    [num_auto_Imprenta]        VARCHAR (50)  NOT NULL,
    [Fecha_Factura]            DATETIME      NOT NULL,
    [co_subtotal_iva]          FLOAT (53)    NOT NULL,
    [co_subtotal_siniva]       FLOAT (53)    NOT NULL,
    [Descuento]                FLOAT (53)    NOT NULL,
    [co_baseImponible]         FLOAT (53)    NOT NULL,
    [co_Por_iva]               FLOAT (53)    NOT NULL,
    [co_valoriva]              FLOAT (53)    NOT NULL,
    [co_total]                 FLOAT (53)    NOT NULL,
    [co_plazo]                 INT           NOT NULL,
    [co_FechaVctoAutorizacion] DATETIME      NULL,
    CONSTRAINT [PK_cp_Aprobacion_Ing_Bod_x_OC] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdAprobacion] ASC),
    CONSTRAINT [FK_cp_Aprobacion_Ing_Bod_x_OC_cp_orden_giro] FOREIGN KEY ([IdEmpresa_Ogiro], [IdCbteCble_Ogiro], [IdTipoCbte_Ogiro]) REFERENCES [dbo].[cp_orden_giro] ([IdEmpresa], [IdCbteCble_Ogiro], [IdTipoCbte_Ogiro]),
    CONSTRAINT [FK_cp_Aprobacion_Ing_Bod_x_OC_cp_proveedor] FOREIGN KEY ([IdEmpresa], [IdProveedor]) REFERENCES [dbo].[cp_proveedor] ([IdEmpresa], [IdProveedor])
);







