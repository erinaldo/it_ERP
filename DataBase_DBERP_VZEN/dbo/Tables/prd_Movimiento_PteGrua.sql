﻿CREATE TABLE [dbo].[prd_Movimiento_PteGrua] (
    [IdEmpresa]           INT            NOT NULL,
    [IdSucursal]          INT            NOT NULL,
    [IdPuenteGrua]        INT            NOT NULL,
    [IdOperador]          INT            NOT NULL,
    [IdProcesoProductivo] INT            NOT NULL,
    [IdMovimiento]        INT            NOT NULL,
    [CodigoBarra]         NVARCHAR (100) NOT NULL,
    [DescripcionPieza]    VARCHAR (200)  NULL,
    [IdEtapaInicio]       INT            NOT NULL,
    [IdEtapaSiguiente]    INT            NOT NULL,
    [ToneladasMover]      INT            NOT NULL,
    [IdSubgrupoAnt]       INT            NOT NULL,
    [IdSubgrupoSig]       INT            NOT NULL,
    [Observacion]         VARCHAR (100)  NULL,
    [FechaTransaccion]    DATETIME       NULL,
    [FechaFinProceso]     DATETIME       NULL,
    [FechaFinTraslado]    DATETIME       NULL,
    [FechaEnEspera]       DATETIME       NULL,
    [IdUsuario]           VARCHAR (20)   NOT NULL,
    [IdUsuarioAnu]        VARCHAR (20)   NULL,
    [MotivoAnu]           VARCHAR (100)  NULL,
    [IdUsuarioUltModi]    VARCHAR (20)   NULL,
    [FechaAnu]            DATETIME       NULL,
    [FechaUltModi]        DATETIME       NULL,
    [Estado]              CHAR (1)       NOT NULL,
    CONSTRAINT [PK_prd_Movimiento_PteGrua_1] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdPuenteGrua] ASC, [IdOperador] ASC, [IdProcesoProductivo] ASC, [IdMovimiento] ASC),
    CONSTRAINT [FK_prd_Movimiento_PteGrua_prd_GrupoTrabajo] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdSubgrupoAnt]) REFERENCES [dbo].[prd_GrupoTrabajo] ([IdEmpresa], [IdSucursal], [IdGrupoTrabajo])
);









