﻿CREATE TABLE [dbo].[ct_Balance_x_General_Data_Final] (
    [IdEmpresa]              INT           NOT NULL,
    [IdCtaCble]              VARCHAR (20)  NOT NULL,
    [nom_cuenta]             VARCHAR (250) NULL,
    [IdNivelCta]             INT           NOT NULL,
    [GrupoCble]              VARCHAR (50)  NOT NULL,
    [OrderGrupoCble]         INT           NULL,
    [gc_estado_financiero]   CHAR (2)      NOT NULL,
    [IdCtaCblePadre]         VARCHAR (20)  NULL,
    [Saldo_Inicial]          FLOAT (53)    NOT NULL,
    [Debito_Mes]             FLOAT (53)    NOT NULL,
    [Credito_Mes]            FLOAT (53)    NOT NULL,
    [Saldo]                  FLOAT (53)    NOT NULL,
    [pc_EsMovimiento]        CHAR (1)      NOT NULL,
    [gc_signo_operacion]     INT           NULL,
    [CtaUtilidad]            BIT           NULL,
    [Saldo_inicial_x_Movi]   FLOAT (53)    NULL,
    [Debito_Mes_x_Movi]      FLOAT (53)    NULL,
    [Credito_Mes_x_Movi]     FLOAT (53)    NULL,
    [Saldo_x_Movi]           FLOAT (53)    NULL,
    [IdCentroCosto]          VARCHAR (20)  NULL,
    [nom_centro_costo]       VARCHAR (250) NULL,
    [IdPunto_cargo_grupo]    INT           NULL,
    [nom_punto_cargo_grupo]  VARCHAR (50)  NULL,
    [IdPunto_cargo]          INT           NULL,
    [nom_punto_cargo]        VARCHAR (50)  NULL,
    [nom_empresa]            NVARCHAR (50) NOT NULL,
    [IdGrupo_Mayor]          VARCHAR (50)  NULL,
    [nom_grupo_mayor]        VARCHAR (150) NULL,
    [order_grupo_mayor]      INT           NULL,
    [orden_fila]             INT           NOT NULL,
    [Reg_x_CC]               BIT           NULL,
    [Saldo_Inicial_deudor]   FLOAT (53)    NULL,
    [Saldo_Inicial_acreedor] FLOAT (53)    NULL,
    [Saldo_fin_deudor]       FLOAT (53)    NULL,
    [Saldo_fin_acreedor]     FLOAT (53)    NULL,
    [pc_clave_corta]         VARCHAR (20)  NULL,
    [IdUsuario]              VARCHAR (20)  NOT NULL
);











