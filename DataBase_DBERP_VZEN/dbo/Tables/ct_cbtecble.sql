﻿CREATE TABLE [dbo].[ct_cbtecble] (
    [IdEmpresa]         INT           NOT NULL,
    [IdTipoCbte]        INT           NOT NULL,
    [IdCbteCble]        NUMERIC (18)  NOT NULL,
    [CodCbteCble]       VARCHAR (20)  NOT NULL,
    [IdPeriodo]         INT           NOT NULL,
    [cb_Fecha]          DATETIME      NOT NULL,
    [cb_Valor]          FLOAT (53)    NOT NULL,
    [cb_Observacion]    VARCHAR (MAX) NOT NULL,
    [cb_Secuencia]      NUMERIC (10)  NOT NULL,
    [cb_Estado]         CHAR (1)      NOT NULL,
    [cb_Anio]           INT           NOT NULL,
    [cb_mes]            INT           NOT NULL,
    [IdUsuario]         VARCHAR (20)  NOT NULL,
    [IdUsuarioAnu]      VARCHAR (20)  NULL,
    [cb_MotivoAnu]      VARCHAR (100) NULL,
    [IdUsuarioUltModi]  VARCHAR (20)  NULL,
    [cb_FechaAnu]       DATETIME      NULL,
    [cb_FechaTransac]   DATETIME      NOT NULL,
    [cb_FechaUltModi]   DATETIME      NULL,
    [cb_Mayorizado]     CHAR (1)      NOT NULL,
    [cb_para_conciliar] BIT           NOT NULL,
    [IdSucursal]        INT           NOT NULL,
    CONSTRAINT [PK_ct_cbtecble] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdTipoCbte] ASC, [IdCbteCble] ASC),
    CONSTRAINT [FK_ct_cbtecble_ct_anio_fiscal] FOREIGN KEY ([cb_Anio]) REFERENCES [dbo].[ct_anio_fiscal] ([IdanioFiscal]),
    CONSTRAINT [FK_ct_cbtecble_ct_cbtecble_tipo] FOREIGN KEY ([IdEmpresa], [IdTipoCbte]) REFERENCES [dbo].[ct_cbtecble_tipo] ([IdEmpresa], [IdTipoCbte]),
    CONSTRAINT [FK_ct_cbtecble_ct_periodo] FOREIGN KEY ([IdEmpresa], [IdPeriodo]) REFERENCES [dbo].[ct_periodo] ([IdEmpresa], [IdPeriodo]),
    CONSTRAINT [FK_ct_cbtecble_tb_mes] FOREIGN KEY ([cb_mes]) REFERENCES [dbo].[tb_mes] ([idMes]),
    CONSTRAINT [FK_ct_cbtecble_tb_sucursal] FOREIGN KEY ([IdEmpresa], [IdSucursal]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal])
);




GO
CREATE NONCLUSTERED INDEX [IX_ct_cbtecble]
    ON [dbo].[ct_cbtecble]([IdEmpresa] ASC, [IdCbteCble] ASC, [IdTipoCbte] ASC);

