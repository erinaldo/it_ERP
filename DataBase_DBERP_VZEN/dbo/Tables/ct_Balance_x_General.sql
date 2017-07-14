﻿CREATE TABLE [dbo].[ct_Balance_x_General] (
    [IdEmpresa]              INT           NOT NULL,
    [IdCtaCble]              VARCHAR (20)  NOT NULL,
    [nom_cuenta]             VARCHAR (189) NULL,
    [IdNivelCta]             INT           NOT NULL,
    [GrupoCble]              CHAR (50)     NOT NULL,
    [OrderGrupoCble]         TINYINT       NOT NULL,
    [gc_estado_financiero]   CHAR (2)      NOT NULL,
    [IdCtaCblePadre]         VARCHAR (20)  NULL,
    [Saldo_Inicial]          FLOAT (53)    NOT NULL,
    [Debito_Mes]             FLOAT (53)    NOT NULL,
    [Credito_Mes]            FLOAT (53)    NOT NULL,
    [Saldo]                  FLOAT (53)    NOT NULL,
    [CtaUtilidad]            BIT           NULL,
    [Saldo_inicial_x_Movi]   FLOAT (53)    NULL,
    [Debito_Mes_x_Movi]      FLOAT (53)    NULL,
    [Credito_Mes_x_Movi]     FLOAT (53)    NULL,
    [Saldo_x_Movi]           FLOAT (53)    NULL,
    [Saldo_Inicial_deudor]   FLOAT (53)    NULL,
    [Saldo_Inicial_acreedor] FLOAT (53)    NULL,
    [Saldo_fin_deudor]       FLOAT (53)    NULL,
    [Saldo_fin_acreedor]     FLOAT (53)    NULL,
    [IdUsuario]              VARCHAR (20)  NOT NULL,
    CONSTRAINT [PK_ct_Balance_x_General] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCtaCble] ASC, [IdUsuario] ASC)
);











