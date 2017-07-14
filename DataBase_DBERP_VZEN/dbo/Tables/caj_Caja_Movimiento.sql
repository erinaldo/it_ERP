﻿CREATE TABLE [dbo].[caj_Caja_Movimiento] (
    [IdEmpresa]         INT            NOT NULL,
    [IdCbteCble]        NUMERIC (18)   NOT NULL,
    [IdTipocbte]        INT            NOT NULL,
    [IdSucursal]        INT            NULL,
    [CodMoviCaja]       VARCHAR (20)   NOT NULL,
    [cm_Signo]          CHAR (1)       NOT NULL,
    [cm_beneficiario]   VARCHAR (1000) NOT NULL,
    [cm_valor]          FLOAT (53)     NOT NULL,
    [IdTipoMovi]        INT            NOT NULL,
    [cm_observacion]    VARCHAR (MAX)  NOT NULL,
    [IdCaja]            INT            NOT NULL,
    [IdPeriodo]         INT            NOT NULL,
    [cm_fecha]          DATETIME       NOT NULL,
    [IdUsuario]         VARCHAR (50)   NOT NULL,
    [IdUsuario_Anu]     VARCHAR (50)   NULL,
    [FechaAnulacion]    DATETIME       NULL,
    [Fecha_Transac]     DATETIME       NOT NULL,
    [Fecha_UltMod]      DATETIME       NULL,
    [IdUsuarioUltMod]   VARCHAR (50)   NULL,
    [Estado]            VARCHAR (1)    NOT NULL,
    [MotivoAnulacion]   VARCHAR (200)  NULL,
    [IdUsuario_Aprueba] VARCHAR (50)   NULL,
    [IdCbteCble_Anu]    NUMERIC (18)   NULL,
    [IdTipocbte_Anu]    INT            NULL,
    [IdTipoFlujo]       NUMERIC (18)   NULL,
    [IdTipo_Persona]    VARCHAR (20)   NULL,
    [IdEntidad]         NUMERIC (18)   NULL,
    [IdPersona]         NUMERIC (18)   NULL,
    [IdRecibo]          NUMERIC (18)   NULL,
    [IdPuntoVta]        INT            NULL,
    CONSTRAINT [PK_ba_Caja_Movimiento] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCbteCble] ASC, [IdTipocbte] ASC),
    CONSTRAINT [FK_caj_Caja_Movimiento_ba_TipoFlujo] FOREIGN KEY ([IdEmpresa], [IdTipoFlujo]) REFERENCES [dbo].[ba_TipoFlujo] ([IdEmpresa], [IdTipoFlujo]),
    CONSTRAINT [FK_caj_Caja_Movimiento_caj_Caja] FOREIGN KEY ([IdEmpresa], [IdCaja]) REFERENCES [dbo].[caj_Caja] ([IdEmpresa], [IdCaja]),
    CONSTRAINT [FK_caj_Caja_Movimiento_caj_Caja_Movimiento_Tipo] FOREIGN KEY ([IdTipoMovi]) REFERENCES [dbo].[caj_Caja_Movimiento_Tipo] ([IdTipoMovi]),
    CONSTRAINT [FK_caj_Caja_Movimiento_ct_cbtecble] FOREIGN KEY ([IdEmpresa], [IdTipocbte], [IdCbteCble]) REFERENCES [dbo].[ct_cbtecble] ([IdEmpresa], [IdTipoCbte], [IdCbteCble]),
    CONSTRAINT [FK_caj_Caja_Movimiento_ct_cbtecble1] FOREIGN KEY ([IdEmpresa], [IdTipocbte_Anu], [IdCbteCble_Anu]) REFERENCES [dbo].[ct_cbtecble] ([IdEmpresa], [IdTipoCbte], [IdCbteCble]),
    CONSTRAINT [FK_caj_Caja_Movimiento_ct_periodo] FOREIGN KEY ([IdEmpresa], [IdPeriodo]) REFERENCES [dbo].[ct_periodo] ([IdEmpresa], [IdPeriodo]),
    CONSTRAINT [FK_caj_Caja_Movimiento_tb_persona] FOREIGN KEY ([IdPersona]) REFERENCES [dbo].[tb_persona] ([IdPersona]),
    CONSTRAINT [FK_caj_Caja_Movimiento_tb_persona_tipo] FOREIGN KEY ([IdTipo_Persona]) REFERENCES [dbo].[tb_persona_tipo] ([IdTipo_Persona]),
    CONSTRAINT [FK_caj_Caja_Movimiento_tb_sucursal] FOREIGN KEY ([IdEmpresa], [IdSucursal]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal])
);







