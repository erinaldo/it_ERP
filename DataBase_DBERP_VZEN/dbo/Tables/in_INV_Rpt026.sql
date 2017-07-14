﻿CREATE TABLE [dbo].[in_INV_Rpt026] (
    [IdEmpresa]         INT           NOT NULL,
    [IdSucursal]        INT           NOT NULL,
    [IdBodega]          INT           NOT NULL,
    [IdProducto]        NUMERIC (18)  NOT NULL,
    [Fecha_ini]         DATETIME      NOT NULL,
    [Fecha_fin]         DATETIME      NOT NULL,
    [pr_codigo]         NVARCHAR(80)  NOT NULL,
    [nom_producto]      VARCHAR (1000) NOT NULL,
    [IdCategoria]       VARCHAR (25)  NOT NULL,
    [nom_categoria]     VARCHAR (200) NOT NULL,
    [IdLinea]           INT           NOT NULL,
    [nom_linea]         VARCHAR (200) NOT NULL,
    [Saldo_inicial]     FLOAT (53)    NOT NULL,
    [Ingresos]          FLOAT (53)    NOT NULL,
    [Egresos]           FLOAT (53)    NOT NULL,
    [Saldo_final]       FLOAT (53)    NOT NULL,
    [IdUnidadMedida]    VARCHAR (25)  NOT NULL,
    [nom_unidad_medida] VARCHAR (200) NOT NULL,
    [nom_Bodega]        VARCHAR (150) NOT NULL,
    [nom_Sucursal]      VARCHAR (150) NOT NULL,
    [costo_inicial]     FLOAT (53)    NOT NULL,
    [costo_ingresos]    FLOAT (53)    NOT NULL,
    [costo_egresos]     FLOAT (53)    NOT NULL,
    [costo_final]       FLOAT (53)    NOT NULL,
    CONSTRAINT [PK_in_INV_Rpt026] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdBodega] ASC, [IdProducto] ASC),
    CONSTRAINT [FK_in_INV_Rpt026_in_linea] FOREIGN KEY ([IdEmpresa], [IdCategoria], [IdLinea]) REFERENCES [dbo].[in_linea] ([IdEmpresa], [IdCategoria], [IdLinea]),
    CONSTRAINT [FK_in_INV_Rpt026_in_Producto] FOREIGN KEY ([IdEmpresa], [IdProducto]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto]),
    CONSTRAINT [FK_in_INV_Rpt026_in_UnidadMedida] FOREIGN KEY ([IdUnidadMedida]) REFERENCES [dbo].[in_UnidadMedida] ([IdUnidadMedida])
);



