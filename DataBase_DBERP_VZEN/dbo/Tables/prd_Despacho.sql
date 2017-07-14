﻿CREATE TABLE [dbo].[prd_Despacho] (
    [IdEmpresa]        INT            NOT NULL,
    [IdSucursal]       INT            NOT NULL,
    [IdDespacho]       NUMERIC (18)   NOT NULL,
    [IdBodega]         INT            NOT NULL,
    [CodObra]          VARCHAR (20)   NOT NULL,
    [IdCliente]        NUMERIC (10)   NOT NULL,
    [NumDespacho]      VARCHAR (20)   NOT NULL,
    [NumGuiaRemision]  VARCHAR (50)   NOT NULL,
    [NumFactura]       VARCHAR (50)   NULL,
    [FechaIniTras]     DATETIME       NOT NULL,
    [FechaFinTras]     DATETIME       NOT NULL,
    [FechaReg]         DATETIME       NOT NULL,
    [PuntoPartida]     VARCHAR (200)  NOT NULL,
    [PuntoLLegada]     VARCHAR (200)  NOT NULL,
    [ruta]             VARCHAR (200)  NOT NULL,
    [TipoTransporte]   VARCHAR (20)   NOT NULL,
    [Chofer]           VARCHAR (60)   NOT NULL,
    [Placa]            VARCHAR (20)   NOT NULL,
    [Observacion]      VARCHAR (1000) NOT NULL,
    [Estado]           CHAR (1)       NOT NULL,
    [IdUsuario]        VARCHAR (20)   NOT NULL,
    [IdUsuarioAnu]     VARCHAR (20)   NULL,
    [MotivoAnu]        VARCHAR (100)  NULL,
    [IdUsuarioUltModi] VARCHAR (20)   NULL,
    [FechaAnu]         DATETIME       NULL,
    [FechaTransac]     DATETIME       NOT NULL,
    [FechaUltModi]     DATETIME       NULL,
    CONSTRAINT [PK_prd_Despacho_1] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdDespacho] ASC)
);



