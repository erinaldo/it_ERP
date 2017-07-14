﻿CREATE TABLE [dbo].[cxc_rpt_tmp_Factu_ND_NC_Cobro_SP012] (
    [Orden]             INT           NOT NULL,
    [IdEmpresa]         INT           NOT NULL,
    [IdSucursal]        INT           NOT NULL,
    [IdBodega]          INT           NULL,
    [IdCbteVta]         NUMERIC (18)  NOT NULL,
    [vt_tipoDoc]        VARCHAR (20)  NULL,
    [IdCobro_tipo]      VARCHAR (20)  NOT NULL,
    [Su_Descripcion]    NCHAR (60)    NOT NULL,
    [pe_nombreCompleto] VARCHAR (200) NOT NULL,
    [pe_cedulaRuc]      VARCHAR (50)  NOT NULL,
    [numDocumento]      VARCHAR (51)  NULL,
    [IdCliente]         NUMERIC (18)  NOT NULL,
    [vt_fecha]          DATETIME      NOT NULL,
    [vt_fech_venc]      DATETIME      NULL,
    [DiasVencidos]      INT           NULL,
    [IdEstadoCobro]     VARCHAR (5)   NULL,
    [Monto]             FLOAT (53)    NULL,
    [TotalCobrado]      FLOAT (53)    NULL,
    [Valor_Vencido]     FLOAT (53)    NULL,
    [Valor_x_Vencer]    FLOAT (53)    NULL,
    [Tipo]              VARCHAR (10)  NOT NULL,
    [vt_Observacion]    VARCHAR (500) NULL,
    [Valor_x_Vencer_f]  FLOAT (53)    NULL,
    [Vencer_30_Dias]    FLOAT (53)    NULL,
    [Vencer_60_Dias]    FLOAT (53)    NULL,
    [Vencer_90_Dias]    FLOAT (53)    NULL,
    [Mayor_a_90Dias]    FLOAT (53)    NULL
);



