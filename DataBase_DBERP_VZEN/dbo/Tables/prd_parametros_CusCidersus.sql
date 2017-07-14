﻿CREATE TABLE [dbo].[prd_parametros_CusCidersus] (
    [IdEmpresa]                              INT          NOT NULL,
    [IdSucursal_Princ]                       INT          NOT NULL,
    [IdBodega_Princ]                         INT          NOT NULL,
    [IdSucursal_Produccion]                  INT          NOT NULL,
    [IdBodega_Produccion]                    INT          NOT NULL,
    [IdMovi_inven_tipo_ing_suc_princ]        INT          NULL,
    [IdMovi_inven_tipo_egr_suc_princ]        INT          NULL,
    [IdMovi_inven_tipo_egr_consumoprod]      INT          NULL,
    [IdMovi_inven_tipo_ing_consumoprod]      INT          NULL,
    [IdMovi_inven_tipo_ing_ContrlProduccion] INT          NULL,
    [IdMovi_inven_tipo_egr_ContrlProduccion] INT          NULL,
    [IdMovi_inven_tipo_egr_Conversion]       INT          NULL,
    [IdMovi_inven_tipo_ing_Conversion]       INT          NULL,
    [IdMovi_inven_tipo_egr_Ensamblado]       INT          NULL,
    [IdMovi_inven_tipo_ing_Ensamblado]       INT          NULL,
    [IdMovi_inven_tipo_ingxresid_Conversion] INT          NULL,
    [IdMovi_invent_tipo_egr_Despacho]        INT          NULL,
    [IdEstadoAprobacion_x_default]           VARCHAR (15) NULL,
    [IdProductoTipo_ProdTerm]                INT          NULL,
    [IdCategoria_ProdTerm]                   VARCHAR (25) NULL,
    [IdProveedor_ProdTerm]                   NUMERIC (18) NULL,
    [IdMarca_ProdTerm]                       INT          NULL,
    [idTipo_Produto_Elemento]                INT          NULL,
    [IdProductoTipo_MateriaPrima]            INT          NULL,
    [IdMoviInicio]                           DECIMAL (18) NULL,
    CONSTRAINT [PK_prd_parametros_CusCidersus] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC)
);









