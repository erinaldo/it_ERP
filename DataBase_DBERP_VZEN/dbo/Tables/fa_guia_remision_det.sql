﻿CREATE TABLE [dbo].[fa_guia_remision_det] (
    [IdEmpresa]          INT          NOT NULL,
    [IdSucursal]         INT          NOT NULL,
    [IdBodega]           INT          NOT NULL,
    [IdGuiaRemision]     NUMERIC (18) NOT NULL,
    [Secuencia]          INT          NOT NULL,
    [IdProducto]         NUMERIC (18) NOT NULL,
    [gi_cantidad]        FLOAT (53)   NOT NULL,
    [gi_Precio]          FLOAT (53)   NOT NULL,
    [gi_PorDescUnitario] FLOAT (53)   NOT NULL,
    [gi_DescUnitario]    FLOAT (53)   NOT NULL,
    [gi_PrecioFinal]     FLOAT (53)   NOT NULL,
    [gi_Subtotal]        FLOAT (53)   NOT NULL,
    [gi_iva]             FLOAT (53)   NOT NULL,
    [gi_total]           FLOAT (53)   NOT NULL,
    [gi_costo]           FLOAT (53)   NOT NULL,
    [gi_tieneIVA]        CHAR (1)     NULL,
    [gi_detallexItems]   NCHAR (250)  NOT NULL,
    [gi_peso]            FLOAT (53)   NULL,
    CONSTRAINT [PK_fa_guia_remision_det] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdBodega] ASC, [IdGuiaRemision] ASC, [Secuencia] ASC),
    CONSTRAINT [FK_fa_guia_remision_det_fa_guia_remision] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdBodega], [IdGuiaRemision]) REFERENCES [dbo].[fa_guia_remision] ([IdEmpresa], [IdSucursal], [IdBodega], [IdGuiaRemision]),
    CONSTRAINT [FK_fa_guia_remision_det_in_Producto] FOREIGN KEY ([IdEmpresa], [IdProducto]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto])
);

