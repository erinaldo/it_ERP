﻿CREATE TABLE [dbo].[in_movi_inve_detalle] (
    [IdEmpresa]                      INT             NOT NULL,
    [IdSucursal]                     INT             NOT NULL,
    [IdBodega]                       INT             NOT NULL,
    [IdMovi_inven_tipo]              INT             NOT NULL,
    [IdNumMovi]                      NUMERIC (18)    NOT NULL,
    [Secuencia]                      INT             NOT NULL,
    [mv_tipo_movi]                   NVARCHAR (1)    NOT NULL,
    [IdProducto]                     NUMERIC (18)    NOT NULL,
    [dm_cantidad]                    FLOAT (53)      NOT NULL,
    [dm_stock_ante]                  FLOAT (53)      NOT NULL,
    [dm_stock_actu]                  FLOAT (53)      NOT NULL,
    [dm_observacion]                 NVARCHAR (1000) NOT NULL,
    [mv_costo]                       FLOAT (53)      NOT NULL,
    [dm_peso]                        FLOAT (53)      NULL,
    [IdCentroCosto]                  VARCHAR (20)    NULL,
    [IdCentroCosto_sub_centro_costo] VARCHAR (20)    NULL,
    [IdUnidadMedida]                 VARCHAR (25)    NOT NULL,
    [dm_cantidad_sinConversion]      FLOAT (53)      NOT NULL,
    [IdUnidadMedida_sinConversion]   VARCHAR (25)    NOT NULL,
    [mv_costo_sinConversion]         FLOAT (53)      NULL,
    [IdPunto_cargo]                  INT             NULL,
    [IdPunto_cargo_grupo]            INT             NULL,
    [IdMotivo_Inv]                   INT             NULL,
    [Costeado]                       BIT             NULL,
    [IdEmpresa_dev]                  INT             NULL,
    [IdSucursal_dev]                 INT             NULL,
    [IdBodega_dev]                   INT             NULL,
    [IdMovi_inven_tipo_dev]          INT             NULL,
    [IdNumMovi_dev]                  NUMERIC (18)    NULL,
    [Secuencia_dev]                  INT             NULL,
    CONSTRAINT [PK_in_movi_inve_detalle] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdBodega] ASC, [IdMovi_inven_tipo] ASC, [IdNumMovi] ASC, [Secuencia] ASC),
    CONSTRAINT [FK_in_movi_inve_detalle_ct_centro_costo] FOREIGN KEY ([IdEmpresa], [IdCentroCosto]) REFERENCES [dbo].[ct_centro_costo] ([IdEmpresa], [IdCentroCosto]),
    CONSTRAINT [FK_in_movi_inve_detalle_ct_centro_costo_sub_centro_costo] FOREIGN KEY ([IdEmpresa], [IdCentroCosto], [IdCentroCosto_sub_centro_costo]) REFERENCES [dbo].[ct_centro_costo_sub_centro_costo] ([IdEmpresa], [IdCentroCosto], [IdCentroCosto_sub_centro_costo]),
    CONSTRAINT [FK_in_movi_inve_detalle_in_movi_inve] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdBodega], [IdMovi_inven_tipo], [IdNumMovi]) REFERENCES [dbo].[in_movi_inve] ([IdEmpresa], [IdSucursal], [IdBodega], [IdMovi_inven_tipo], [IdNumMovi]),
    CONSTRAINT [FK_in_movi_inve_detalle_in_movi_inve_detalle] FOREIGN KEY ([IdEmpresa_dev], [IdSucursal_dev], [IdBodega_dev], [IdMovi_inven_tipo_dev], [IdNumMovi_dev], [Secuencia_dev]) REFERENCES [dbo].[in_movi_inve_detalle] ([IdEmpresa], [IdSucursal], [IdBodega], [IdMovi_inven_tipo], [IdNumMovi], [Secuencia]),
    CONSTRAINT [FK_in_movi_inve_detalle_in_Producto] FOREIGN KEY ([IdEmpresa], [IdProducto]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto]),
    CONSTRAINT [FK_in_movi_inve_detalle_in_UnidadMedida] FOREIGN KEY ([IdUnidadMedida]) REFERENCES [dbo].[in_UnidadMedida] ([IdUnidadMedida]),
    CONSTRAINT [FK_in_movi_inve_detalle_in_UnidadMedida1] FOREIGN KEY ([IdUnidadMedida_sinConversion]) REFERENCES [dbo].[in_UnidadMedida] ([IdUnidadMedida])
);







