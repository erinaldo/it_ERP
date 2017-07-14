﻿CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_det_egr_x_bod] (
    [IdEmpresa]                      INT           NOT NULL,
    [IdPreFacturacion]               NUMERIC (18)  NOT NULL,
    [secuencia]                      INT           NOT NULL,
    [IdCentro_Costo]                 VARCHAR (20)  NOT NULL,
    [IdCentroCosto_sub_centro_costo] VARCHAR (20)  NULL,
    [IdPunto_cargo]                  INT           NULL,
    [IdEmpresa_mov_inv]              INT           NOT NULL,
    [IdSucursal_mov_inv]             INT           NOT NULL,
    [IdBodega_mov_inv]               INT           NOT NULL,
    [IdMovi_inven_tipo_mov_inv]      INT           NOT NULL,
    [IdNumMovi_mov_inv]              NUMERIC (18)  NOT NULL,
    [Secuencia_det]                  INT           NOT NULL,
    [observacion_det]                VARCHAR (150) NOT NULL,
    [Cantidad]                       FLOAT (53)    NULL,
    [Costo_Uni]                      FLOAT (53)    NULL,
    [Subtotal]                       FLOAT (53)    NULL,
    [Aplica_Iva]                     BIT           NULL,
    [Por_Iva]                        FLOAT (53)    NULL,
    [Valor_Iva]                      FLOAT (53)    NULL,
    [Total]                          FLOAT (53)    NULL,
    [Facturar]                       BIT           NOT NULL,
    [IdTarifario]                    NUMERIC (18)  NULL,
    [Porc_ganancia]                  FLOAT (53)    NOT NULL,
    CONSTRAINT [PK_fa_pre_facturacion_det_egr_x_bod] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdPreFacturacion] ASC, [secuencia] ASC),
    --CONSTRAINT [FK_fa_pre_facturacion_det_egr_x_bod_fa_pre_facturacion] FOREIGN KEY ([IdEmpresa], [IdPreFacturacion]) REFERENCES [Fj_servindustrias].[fa_pre_facturacion] ([IdEmpresa], [IdPreFacturacion])
);









