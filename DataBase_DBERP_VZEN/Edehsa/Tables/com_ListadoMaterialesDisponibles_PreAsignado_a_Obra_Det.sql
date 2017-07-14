﻿CREATE TABLE [Edehsa].[com_ListadoMaterialesDisponibles_PreAsignado_a_Obra_Det] (
    [IdEmpresa]                           INT             NOT NULL,
    [IdSucursal]                          INT             NOT NULL,
    [IdBodega]                            INT             NOT NULL,
    [IdMovi_inven_tipo]                   INT             NOT NULL,
    [IdListadoMPPreasingado]              NUMERIC (18)    NOT NULL,
    [IdNumMovi]                           NUMERIC (18)    NOT NULL,
    [CodObra_preasignada]                 VARCHAR (20)    NOT NULL,
    [CodigoBarra]                         NVARCHAR (100)  NOT NULL,
    [IdProducto]                          NUMERIC (10)    NOT NULL,
    [dm_cantidad]                         FLOAT (53)      NOT NULL,
    [dm_observacion]                      NVARCHAR (1000) NULL,
    [Det_Kg]                              FLOAT (53)      NOT NULL,
    [pr_largo]                            FLOAT (53)      NULL,
    [largo_total]                         FLOAT (53)      NULL,
    [largo_restante]                      FLOAT (53)      NULL,
    [largo_pieza_entera]                  FLOAT (53)      NULL,
    [cantidad_pieza_entera]               INT             NULL,
    [largo_pieza_complementaria]          FLOAT (53)      NULL,
    [cantidad_pieza_complementaria]       FLOAT (53)      NULL,
    [cantidad_total_pieza_complementaria] FLOAT (53)      NULL,
    [largo_despunte1]                     FLOAT (53)      NULL,
    [cantidad_despunte1]                  FLOAT (53)      NULL,
    [es_despunte_usable1]                 BIT             NULL,
    [largo_despunte2]                     FLOAT (53)      NULL,
    [cantidad_despunte2]                  FLOAT (53)      NULL,
    [es_despunte_usable2]                 BIT             NULL,
    [IdEstadoAprob]                       VARCHAR (25)    NOT NULL,
    CONSTRAINT [PK_com_ListadoMaterialesDisponibles_PreAsignado_a_Obra_Det] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdBodega] ASC, [IdMovi_inven_tipo] ASC, [IdListadoMPPreasingado] ASC, [IdNumMovi] ASC, [CodObra_preasignada] ASC, [CodigoBarra] ASC)
);





