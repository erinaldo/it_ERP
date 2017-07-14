﻿CREATE TABLE [dbo].[fa_factura_det] (
    [IdEmpresa]                      INT            NOT NULL,
    [IdSucursal]                     INT            NOT NULL,
    [IdBodega]                       INT            NOT NULL,
    [IdCbteVta]                      NUMERIC (18)   NOT NULL,
    [Secuencia]                      INT            NOT NULL,
    [IdProducto]                     NUMERIC (18)   NOT NULL,
    [vt_cantidad]                    FLOAT (53)     NOT NULL,
    [vt_Precio]                      FLOAT (53)     NOT NULL,
    [vt_PorDescUnitario]             FLOAT (53)     NOT NULL,
    [vt_DescUnitario]                FLOAT (53)     NOT NULL,
    [vt_PrecioFinal]                 FLOAT (53)     NOT NULL,
    [vt_Subtotal]                    FLOAT (53)     NOT NULL,
    [vt_iva]                         FLOAT (53)     NOT NULL,
    [vt_total]                       FLOAT (53)     NOT NULL,
    [vt_estado]                      CHAR (1)      NOT NULL,
    [vt_detallexItems]               NVARCHAR (MAX) NULL,
    [vt_Peso]                        FLOAT (53)     NULL,
    [vt_por_iva]                     FLOAT (53)     NOT NULL,
    [IdPunto_Cargo]                  INT            NULL,
    [IdPunto_cargo_grupo]            INT            NULL,
    [IdCod_Impuesto_Iva]             VARCHAR (25)   NOT NULL,
    [IdCod_Impuesto_Ice]             VARCHAR (25)   NULL,
    [IdCentroCosto]                  VARCHAR (20)   NULL,
    [IdCentroCosto_sub_centro_costo] VARCHAR (20)   NULL,
    CONSTRAINT [PK_fa_factura_detalle] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdBodega] ASC, [IdCbteVta] ASC, [Secuencia] ASC),
    CONSTRAINT [FK_fa_factura_det_fa_factura] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdBodega], [IdCbteVta]) REFERENCES [dbo].[fa_factura] ([IdEmpresa], [IdSucursal], [IdBodega], [IdCbteVta]),
    CONSTRAINT [FK_fa_factura_det_in_Producto] FOREIGN KEY ([IdEmpresa], [IdProducto]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto]),
    CONSTRAINT [FK_fa_factura_det_tb_sis_Impuesto] FOREIGN KEY ([IdCod_Impuesto_Iva]) REFERENCES [dbo].[tb_sis_Impuesto] ([IdCod_Impuesto]),
    CONSTRAINT [FK_fa_factura_det_tb_sis_Impuesto1] FOREIGN KEY ([IdCod_Impuesto_Ice]) REFERENCES [dbo].[tb_sis_Impuesto] ([IdCod_Impuesto])
);











