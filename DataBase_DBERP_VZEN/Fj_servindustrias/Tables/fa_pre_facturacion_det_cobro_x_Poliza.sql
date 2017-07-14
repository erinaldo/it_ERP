﻿CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_det_cobro_x_Poliza] (
    [IdEmpresa]                      INT          NOT NULL,
    [IdPreFacturacion]               NUMERIC (18) NOT NULL,
    [secuencia]                      INT          NOT NULL,
    [IdCentro_Costo]                 VARCHAR (20) NOT NULL,
    [IdCentroCosto_sub_centro_costo] VARCHAR (20) NOT NULL,
    [IdPunto_cargo]                  INT          NULL,
    [Tipo_Cobro_Poliza_X]            VARCHAR (50) NOT NULL,
    [IdEmpresa_pol_det]              INT          NULL,
    [IdPoliza_pol_det]               NUMERIC (18) NULL,
    [IdActivoFijo_pol_det]           INT          NULL,
    [secuencia_pol_det]              INT          NULL,
    [IdEmpresa_pol_cuota]            INT          NULL,
    [IdPoliza_pol_cuota]             NUMERIC (18) NULL,
    [cod_cuota_pol_cuota]            VARCHAR (50) NULL,
    [Cantidad]                       FLOAT (53)   NULL,
    [Costo_Uni]                      FLOAT (53)   NULL,
    [Subtotal]                       FLOAT (53)   NULL,
    [Aplica_Iva]                     BIT          NULL,
    [Por_Iva]                        FLOAT (53)   NULL,
    [Valor_Iva]                      FLOAT (53)   NULL,
    [Total]                          FLOAT (53)   NULL,
    [Facturar]                       BIT          NOT NULL,
    [Subtotal_iva]                   FLOAT (53)   NULL,
    [Subtotal_0]                     FLOAT (53)   NULL,
    [IdTarifario]                    NUMERIC (18) NULL,
    [Porc_ganancia]                  FLOAT (53)   NOT NULL,
    CONSTRAINT [PK_fa_pre_facturacion_det_Poliza_1] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdPreFacturacion] ASC, [secuencia] ASC)
);











