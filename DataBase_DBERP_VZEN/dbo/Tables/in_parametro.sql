﻿CREATE TABLE [dbo].[in_parametro] (
    [IdEmpresa]                              INT          NOT NULL,
    [IdCentroCosto_Padre_a_cargar]           VARCHAR (20) NULL,
    [LabelCentroCosto]                       VARCHAR (20) NULL,
    [IdMovi_inven_tipo_egresoBodegaOrigen]   INT          NULL,
    [IdMovi_inven_tipo_ingresoBodegaDestino] INT          NULL,
    [Maneja_Stock_Negativo]                  VARCHAR (1)  NULL,
    [Usuario_Escoge_Motivo]                  VARCHAR (1)  NULL,
    [IdMovi_inven_tipo_egresoAjuste]         INT          NULL,
    [IdMovi_inven_tipo_ingresoAjuste]        INT          NULL,
    [Mostrar_CentroCosto_en_transacciones]   VARCHAR (1)  NULL,
    [Rango_Busqueda_Transacciones]           INT          NULL,
    [pa_EstadoInicial_Pedido]                VARCHAR (5)  NULL,
    [IdCtaCble_Inven]                        VARCHAR (20) NULL,
    [IdCtaCble_CostoInven]                   VARCHAR (20) NULL,
    [IdTipoCbte_CostoInven]                  INT          NULL,
    [IdBodegaSuministro]                     INT          NULL,
    [IdCentro_Costo_Inventario]              VARCHAR (20) NULL,
    [IdCentro_Costo_Costo]                   VARCHAR (20) NULL,
    [IdTipoCbte_CostoInven_Reverso]          INT          NULL,
    [IdMovi_Inven_tipo_x_anu_Ing]            INT          NULL,
    [IdMovi_Inven_tipo_x_anu_Egr]            INT          NULL,
    [IdMovi_Inven_tipo_Ing_Ajust_fis_x_defa] INT          NULL,
    [IdMovi_Inven_tipo_Egr_Ajust_fis_x_defa] INT          NULL,
    [ApruebaAjusteFisicoAuto]                VARCHAR (1)  NULL,
    [IdSucursal_Suministro]                  INT          NULL,
    [IdEstadoAproba_x_Ing]                   VARCHAR (15) NULL,
    [IdEstadoAproba_x_Egr]                   VARCHAR (15) NULL,
    [IdMovi_Inven_tipo_x_Dev_Inv_x_Ing]      INT          NULL,
    [IdMovi_Inven_tipo_x_Dev_Inv_x_Erg]      INT          NULL,
    [P_Grabar_Items_x_Cada_Movi_Inven]       BIT          NULL,
    [P_Fecha_para_contabilizacion_ingr_egr]  VARCHAR (20) NULL,
    [P_se_valida_parametrizacion_x_producto] BIT          NULL,
    [P_Al_Conta_CtaInven_Buscar_en]          VARCHAR (15) NULL,
    [P_Al_Conta_CtaCosto_Buscar_en]          VARCHAR (15) NULL,
    [P_IdCtaCble_transitoria_transf_inven]   VARCHAR (20) NULL,
    CONSTRAINT [PK_in_parametro] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC),
    CONSTRAINT [FK_in_parametro_ct_centro_costo] FOREIGN KEY ([IdEmpresa], [IdCentro_Costo_Costo]) REFERENCES [dbo].[ct_centro_costo] ([IdEmpresa], [IdCentroCosto]),
    CONSTRAINT [FK_in_parametro_ct_centro_costo1] FOREIGN KEY ([IdEmpresa], [IdCentro_Costo_Inventario]) REFERENCES [dbo].[ct_centro_costo] ([IdEmpresa], [IdCentroCosto]),
    CONSTRAINT [FK_in_parametro_ct_plancta] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Inven]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_parametro_ct_plancta1] FOREIGN KEY ([IdEmpresa], [IdCtaCble_CostoInven]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_parametro_ct_plancta2] FOREIGN KEY ([IdEmpresa], [P_IdCtaCble_transitoria_transf_inven]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_in_parametro_in_Catalogo] FOREIGN KEY ([P_Al_Conta_CtaInven_Buscar_en]) REFERENCES [dbo].[in_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_in_parametro_in_Catalogo1] FOREIGN KEY ([P_Al_Conta_CtaCosto_Buscar_en]) REFERENCES [dbo].[in_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_in_parametro_in_Ing_Egr_Inven_estado_apro] FOREIGN KEY ([IdEstadoAproba_x_Ing]) REFERENCES [dbo].[in_Ing_Egr_Inven_estado_apro] ([IdEstadoAproba]),
    CONSTRAINT [FK_in_parametro_in_Ing_Egr_Inven_estado_apro1] FOREIGN KEY ([IdEstadoAproba_x_Egr]) REFERENCES [dbo].[in_Ing_Egr_Inven_estado_apro] ([IdEstadoAproba]),
    CONSTRAINT [FK_in_parametro_in_movi_inven_tipo] FOREIGN KEY ([IdEmpresa], [IdMovi_Inven_tipo_x_anu_Ing]) REFERENCES [dbo].[in_movi_inven_tipo] ([IdEmpresa], [IdMovi_inven_tipo]),
    CONSTRAINT [FK_in_parametro_in_movi_inven_tipo1] FOREIGN KEY ([IdEmpresa], [IdMovi_Inven_tipo_x_anu_Egr]) REFERENCES [dbo].[in_movi_inven_tipo] ([IdEmpresa], [IdMovi_inven_tipo]),
    CONSTRAINT [FK_in_parametro_in_movi_inven_tipo2] FOREIGN KEY ([IdEmpresa], [IdMovi_inven_tipo_egresoBodegaOrigen]) REFERENCES [dbo].[in_movi_inven_tipo] ([IdEmpresa], [IdMovi_inven_tipo]),
    CONSTRAINT [FK_in_parametro_in_movi_inven_tipo3] FOREIGN KEY ([IdEmpresa], [IdMovi_inven_tipo_egresoBodegaOrigen]) REFERENCES [dbo].[in_movi_inven_tipo] ([IdEmpresa], [IdMovi_inven_tipo]),
    CONSTRAINT [FK_in_parametro_in_movi_inven_tipo4] FOREIGN KEY ([IdEmpresa], [IdMovi_inven_tipo_ingresoAjuste]) REFERENCES [dbo].[in_movi_inven_tipo] ([IdEmpresa], [IdMovi_inven_tipo]),
    CONSTRAINT [FK_in_parametro_in_movi_inven_tipo5] FOREIGN KEY ([IdEmpresa], [IdMovi_inven_tipo_egresoAjuste]) REFERENCES [dbo].[in_movi_inven_tipo] ([IdEmpresa], [IdMovi_inven_tipo]),
    CONSTRAINT [FK_in_parametro_in_movi_inven_tipo6] FOREIGN KEY ([IdEmpresa], [IdMovi_Inven_tipo_x_Dev_Inv_x_Ing]) REFERENCES [dbo].[in_movi_inven_tipo] ([IdEmpresa], [IdMovi_inven_tipo]),
    CONSTRAINT [FK_in_parametro_in_movi_inven_tipo7] FOREIGN KEY ([IdEmpresa], [IdMovi_Inven_tipo_x_Dev_Inv_x_Erg]) REFERENCES [dbo].[in_movi_inven_tipo] ([IdEmpresa], [IdMovi_inven_tipo])
);

















