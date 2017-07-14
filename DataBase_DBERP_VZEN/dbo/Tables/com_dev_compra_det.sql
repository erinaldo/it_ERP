﻿CREATE TABLE [dbo].[com_dev_compra_det] (
    [IdEmpresa]           INT            NOT NULL,
    [IdSucursal]          INT            NOT NULL,
    [IdBodega]            INT            NOT NULL,
    [IdDevCompra]         NUMERIC (18)   NOT NULL,
    [Secuencia]           INT            NOT NULL,
    [IdProducto]          NUMERIC (18)   NOT NULL,
    [dv_Cantidad]         FLOAT (53)     NOT NULL,
    [dv_precioCompra]     FLOAT (53)     NOT NULL,
    [dv_porc_des]         FLOAT (53)     NOT NULL,
    [dv_descuento]        FLOAT (53)     NOT NULL,
    [dv_subtotal]         FLOAT (53)     NOT NULL,
    [dv_iva]              FLOAT (53)     NOT NULL,
    [dv_total]            FLOAT (53)     NOT NULL,
    [dv_ManejaIva]        BIT       NOT NULL,
    [dv_Costeado]         CHAR (1)       NOT NULL,
    [dv_peso]             FLOAT (53)     NOT NULL,
    [dv_observacion]      VARCHAR (1000) NOT NULL,
    [ocdet_IdEmpresa]     INT            NULL,
    [ocdet_IdSucursal]    INT            NULL,
    [ocdet_IdOrdenCompra] NUMERIC (18)   NULL,
    [ocdet_Secuencia]     INT            NULL,
    CONSTRAINT [PK_com_dev_compra_det] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdBodega] ASC, [IdDevCompra] ASC, [Secuencia] ASC),
    CONSTRAINT [FK_com_dev_compra_det_com_dev_compra] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdBodega], [IdDevCompra]) REFERENCES [dbo].[com_dev_compra] ([IdEmpresa], [IdSucursal], [IdBodega], [IdDevCompra]),
    CONSTRAINT [FK_com_dev_compra_det_com_ordencompra_local_det] FOREIGN KEY ([ocdet_IdEmpresa], [ocdet_IdSucursal], [ocdet_IdOrdenCompra], [ocdet_Secuencia]) REFERENCES [dbo].[com_ordencompra_local_det] ([IdEmpresa], [IdSucursal], [IdOrdenCompra], [Secuencia]),
    CONSTRAINT [FK_com_dev_compra_det_in_Producto] FOREIGN KEY ([IdEmpresa], [IdProducto]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto])
);



