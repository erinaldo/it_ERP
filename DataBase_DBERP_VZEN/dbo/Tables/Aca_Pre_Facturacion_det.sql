﻿CREATE TABLE [dbo].[Aca_Pre_Facturacion_det] (
    [IdInstitucion]        INT            NOT NULL,
    [IdPreFacturacion]     NUMERIC (18)   NOT NULL,
    [Secuencia_Proce]      INT            NOT NULL,
    [secuencia]            INT            NOT NULL,
    [IdRubro]              INT            NOT NULL,
    [IdInstitucion_contra] INT            NOT NULL,
    [IdContrato]           NUMERIC (18)   NOT NULL,
    [IdEstudiante]         NUMERIC (18)   NOT NULL,
    [IdFamiliar]           NUMERIC (18)   NOT NULL,
    [IdParentesco_cat]     VARCHAR (35)   NOT NULL,
    [IdInstitucion_Per]    INT            NOT NULL,
    [IdAnioLectivo_Per]    INT            NOT NULL,
    [IdPeriodo_Per]        INT            NOT NULL,
    [IdGrupoFE]            INT            NOT NULL,
    [IdProducto]           NUMERIC (18)   NULL,
    [vt_cantidad]          FLOAT (53)     NOT NULL,
    [vt_Precio]            FLOAT (53)     NOT NULL,
    [vt_PorDescUnitario]   FLOAT (53)     NOT NULL,
    [vt_DescUnitario]      FLOAT (53)     NOT NULL,
    [vt_PrecioFinal]       FLOAT (53)     NOT NULL,
    [vt_Subtotal]          FLOAT (53)     NOT NULL,
    [vt_iva_valor]         FLOAT (53)     NOT NULL,
    [vt_total]             FLOAT (53)     NOT NULL,
    [IdCod_Impuesto_Iva]   VARCHAR (25)   NOT NULL,
    [observacion_det]      VARCHAR (1500) NOT NULL,
    [IdEmpresa_fac]        INT            NULL,
    [IdSucursal_fac]       INT            NULL,
    [IdBodega_fac]         INT            NULL,
    [IdCbteVta_fac]        NUMERIC (18)   NULL,
    [tipo_descuento]       VARCHAR (5)    NULL,
    CONSTRAINT [PK_Aca_Pre_Facturacion_det_1] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC, [IdPreFacturacion] ASC, [Secuencia_Proce] ASC, [secuencia] ASC),
    CONSTRAINT [FK_Aca_Pre_Facturacion_det_Aca_Contrato_x_Estudiante] FOREIGN KEY ([IdInstitucion], [IdContrato]) REFERENCES [dbo].[Aca_Contrato_x_Estudiante] ([IdInstitucion], [IdContrato]),
    CONSTRAINT [FK_Aca_Pre_Facturacion_det_Aca_estudiante] FOREIGN KEY ([IdInstitucion], [IdEstudiante]) REFERENCES [dbo].[Aca_estudiante] ([IdInstitucion], [IdEstudiante]),
    CONSTRAINT [FK_Aca_Pre_Facturacion_det_Aca_Familiar] FOREIGN KEY ([IdInstitucion], [IdEstudiante], [IdFamiliar], [IdParentesco_cat]) REFERENCES [dbo].[Aca_Familiar_x_Estudiante] ([IdInstitucion], [IdEstudiante], [IdFamiliar], [IdParentesco_cat]),
    CONSTRAINT [FK_Aca_Pre_Facturacion_det_Aca_Pre_Facturacion] FOREIGN KEY ([IdInstitucion], [IdPreFacturacion]) REFERENCES [dbo].[Aca_Pre_Facturacion] ([IdInstitucion], [IdPreFacturacion]),
    CONSTRAINT [FK_Aca_Pre_Facturacion_det_Aca_Rubro] FOREIGN KEY ([IdInstitucion], [IdRubro]) REFERENCES [dbo].[Aca_Rubro] ([IdInstitucion], [IdRubro]),
    CONSTRAINT [FK_Aca_Pre_Facturacion_det_fa_factura] FOREIGN KEY ([IdEmpresa_fac], [IdSucursal_fac], [IdBodega_fac], [IdCbteVta_fac]) REFERENCES [dbo].[fa_factura] ([IdEmpresa], [IdSucursal], [IdBodega], [IdCbteVta])
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


