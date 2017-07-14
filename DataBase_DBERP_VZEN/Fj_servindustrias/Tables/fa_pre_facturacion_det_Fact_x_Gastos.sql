﻿CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_det_Fact_x_Gastos] (
    [IdEmpresa]                      INT          NOT NULL,
    [IdPreFacturacion]               NUMERIC (18) NOT NULL,
    [secuencia]                      NCHAR (10)   NOT NULL,
    [IdCentro_Costo]                 VARCHAR (20) NULL,
    [IdCentroCosto_sub_centro_costo] VARCHAR (20) NULL,
    [IdPunto_cargo]                  INT          NULL,
    [IdEmpresa_og]                   INT          NOT NULL,
    [IdTipoCbte_Ogiro]               INT          NOT NULL,
    [IdCbteCble_Ogiro]               NUMERIC (18) NOT NULL,
    [Cantidad]                       FLOAT (53)   NULL,
    [Costo_Uni]                      FLOAT (53)   NULL,
    [Subtotal]                       FLOAT (53)   NULL,
    [Aplica_Iva]                     BIT          NULL,
    [Por_Iva]                        FLOAT (53)   NULL,
    [Valor_Iva]                      FLOAT (53)   NULL,
    [Total]                          FLOAT (53)   NULL,
    [Facturar]                       BIT          NOT NULL,
    [SubTotal_Iva]                   FLOAT (53)   NULL,
    [SubTotal_0]                     FLOAT (53)   NULL,
    [IdTarifario]                    NUMERIC (18) NULL,
    [Porc_ganancia]                  FLOAT (53)   NOT NULL,
    CONSTRAINT [PK_fa_pre_facturacion_det_Fact_x_Gastos] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdPreFacturacion] ASC, [secuencia] ASC)
);









