﻿CREATE TABLE [dbo].[temp_movi_inve_detalle_egreso_x_item] (
    [IdEmpresa_egr]                  INT           NOT NULL,
    [IdPrefacturacion]               NUMERIC (18)  NOT NULL,
    [Secuencia]                      INT           NULL,
    [IdSucursal_egr]                 INT           NULL,
    [IdBodega_egr]                   INT           NULL,
    [IdMovi_inven_tipo_egr]          INT           NULL,
    [IdNumMovi_egr]                  NUMERIC (18)  NULL,
    [Secuencia_egr]                  INT           NULL,
    [codigo_reg_egr]                 VARCHAR (100) NULL,
    [cantidad_egr]                   FLOAT (53)    NULL,
    [dm_cantidad]                    FLOAT (53)    NULL,
    [cm_fecha]                       DATETIME      NULL,
    [oc_NumDocumento]                VARCHAR (50)  NULL,
    [IdProveedor]                    NUMERIC (18)  NULL,
    [IdProducto]                     NUMERIC (18)  NULL,
    [dm_precio]                      FLOAT (53)    NULL,
    [IdCentro_Costo]                 VARCHAR (20)  NOT NULL,
    [IdCentroCosto_sub_centro_costo] VARCHAR (20)  NULL,
    [IdPunto_cargo]                  INT           NULL,
    [Observacion_det]                VARCHAR (200) NULL,
    [Aplica_Iva]                     BIT           NOT NULL,
    [Por_Iva]                        FLOAT (53)    NOT NULL,
    [Subtotal]                       FLOAT (53)    NOT NULL,
    [Valor_Iva]                      FLOAT (53)    NOT NULL,
    [Total]                          FLOAT (53)    NOT NULL,
    [IdTarifario]                    NUMERIC (18)  NULL,
    [Facturar]                       BIT           NOT NULL,
    [Porc_ganancia]                  FLOAT (53)    NOT NULL
);







