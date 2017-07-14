﻿CREATE TABLE [dbo].[com_solicitud_compra_det_aprobacion] (
    [IdEmpresa]                      INT           NOT NULL,
    [IdSucursal_SC]                  INT           NOT NULL,
    [IdSolicitudCompra]              NUMERIC (18)  NOT NULL,
    [Secuencia_SC]                   INT           NOT NULL,
    [IdProducto_SC]                  NUMERIC (18)  NULL,
    [NomProducto_SC]                 VARCHAR (500) NULL,
    [Cantidad_aprobada]              FLOAT (53)    NOT NULL,
    [IdEstadoAprobacion]             VARCHAR (25)  NOT NULL,
    [IdProveedor_SC]                 NUMERIC (18)  NULL,
    [IdUsuarioAprueba]               VARCHAR (25)  NULL,
    [FechaHoraAprobacion]            DATETIME      NULL,
    [observacion]                    VARCHAR (200) NULL,
    [IdUnidadMedida]                 VARCHAR (25)  NULL,
    [do_precioCompra]                FLOAT (53)    NULL,
    [do_porc_des]                    FLOAT (53)    NULL,
    [do_descuento]                   FLOAT (53)    NULL,
    [do_subtotal]                    FLOAT (53)    NULL,
    [do_iva]                         FLOAT (53)    NULL,
    [do_total]                       FLOAT (53)    NULL,
    [do_ManejaIva]                   BIT           NULL,
    [IdCentroCosto]                  VARCHAR (20)  NULL,
    [IdCentroCosto_sub_centro_costo] VARCHAR (20)  NULL,
    [IdPunto_cargo_grupo]            INT           NULL,
    [IdPunto_cargo]                  INT           NULL,
    [do_observacion]                 VARCHAR (550) NULL,
    [IdEstadoPreAprobacion]          VARCHAR (25)  NULL,
    [IdCod_Impuesto_Iva]             VARCHAR (25)  NULL,
    CONSTRAINT [PK_com_solicitud_compra_det_aprobacion_1] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal_SC] ASC, [IdSolicitudCompra] ASC, [Secuencia_SC] ASC),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_com_catalogo] FOREIGN KEY ([IdEstadoAprobacion]) REFERENCES [dbo].[com_catalogo] ([IdCatalogocompra]),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_com_catalogo1] FOREIGN KEY ([IdEstadoPreAprobacion]) REFERENCES [dbo].[com_catalogo] ([IdCatalogocompra]),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_com_solicitud_compra_det] FOREIGN KEY ([IdEmpresa], [IdSucursal_SC], [IdSolicitudCompra], [Secuencia_SC]) REFERENCES [dbo].[com_solicitud_compra_det] ([IdEmpresa], [IdSucursal], [IdSolicitudCompra], [Secuencia]),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_ct_centro_costo] FOREIGN KEY ([IdEmpresa], [IdCentroCosto]) REFERENCES [dbo].[ct_centro_costo] ([IdEmpresa], [IdCentroCosto]),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_ct_centro_costo_sub_centro_costo] FOREIGN KEY ([IdEmpresa], [IdCentroCosto], [IdCentroCosto_sub_centro_costo]) REFERENCES [dbo].[ct_centro_costo_sub_centro_costo] ([IdEmpresa], [IdCentroCosto], [IdCentroCosto_sub_centro_costo]),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_ct_punto_cargo_grupo] FOREIGN KEY ([IdEmpresa], [IdPunto_cargo_grupo]) REFERENCES [dbo].[ct_punto_cargo_grupo] ([IdEmpresa], [IdPunto_cargo_grupo]),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_ct_punto_cargo1] FOREIGN KEY ([IdEmpresa], [IdPunto_cargo]) REFERENCES [dbo].[ct_punto_cargo] ([IdEmpresa], [IdPunto_cargo]),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_in_UnidadMedida] FOREIGN KEY ([IdUnidadMedida]) REFERENCES [dbo].[in_UnidadMedida] ([IdUnidadMedida]),
    CONSTRAINT [FK_com_solicitud_compra_det_aprobacion_tb_sis_Impuesto] FOREIGN KEY ([IdCod_Impuesto_Iva]) REFERENCES [dbo].[tb_sis_Impuesto] ([IdCod_Impuesto])
);





