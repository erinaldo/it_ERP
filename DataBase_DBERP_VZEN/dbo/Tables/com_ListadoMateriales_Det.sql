﻿CREATE TABLE [dbo].[com_ListadoMateriales_Det] (
    [IdEmpresa]                           INT          NOT NULL,
    [IdListadoMateriales]                 NUMERIC (18) NOT NULL,
    [IdDetalle]                           INT          NOT NULL,
    [CodObra]                             VARCHAR (20) NOT NULL,
    [IdOrdenTaller]                       NUMERIC (18) NULL,
    [IdProducto]                          NUMERIC (18) NOT NULL,
    [Unidades]                            FLOAT (53)   NOT NULL,
    [Det_Kg]                              FLOAT (53)   NOT NULL,
    [pr_largo]                            FLOAT (53)   NULL,
    [largo_total]                         FLOAT (53)   NULL,
    [largo_restante]                      FLOAT (53)   NULL,
    [largo_pieza_entera]                  FLOAT (53)   NULL,
    [cantidad_pieza_entera]               INT          NULL,
    [largo_pieza_complementaria]          FLOAT (53)   NULL,
    [cantidad_pieza_complementaria]       FLOAT (53)   NULL,
    [cantidad_total_pieza_complementaria] FLOAT (53)   NULL,
    [largo_despunte1]                     FLOAT (53)   NULL,
    [cantidad_despunte1]                  FLOAT (53)   NULL,
    [es_despunte_usable1]                 BIT          NULL,
    [largo_despunte2]                     FLOAT (53)   NULL,
    [cantidad_despunte2]                  FLOAT (53)   NULL,
    [es_despunte_usable2]                 BIT          NULL,
    [IdEstadoAprob]                       VARCHAR (25) NOT NULL,
    CONSTRAINT [PK_com_ListadoMateriales_Det] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdListadoMateriales] ASC, [IdDetalle] ASC),
    CONSTRAINT [FK_com_ListadoMateriales_Det_in_Producto] FOREIGN KEY ([IdEmpresa], [IdProducto]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto])
);









