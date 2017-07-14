﻿CREATE TABLE [dbo].[cp_orden_pago] (
    [IdEmpresa]          INT           NOT NULL,
    [IdOrdenPago]        NUMERIC (18)  NOT NULL,
    [Observacion]        VARCHAR (500) NOT NULL,
    [IdTipo_op]          VARCHAR (20)  NOT NULL,
    [IdTipo_Persona]     VARCHAR (20)  NULL,
    [IdPersona]          NUMERIC (18)  NOT NULL,
    [IdEntidad]          NUMERIC (18)  NULL,
    [Fecha]              DATETIME      NOT NULL,
    [IdEstadoAprobacion] VARCHAR (10)  NOT NULL,
    [IdFormaPago]        VARCHAR (20)  NOT NULL,
    [Fecha_Pago]         DATE          NOT NULL,
    [IdBanco]            INT           NULL,
    [Estado]             CHAR (1)      NOT NULL,
    [IdUsuario]          VARCHAR (20)  NULL,
    [IdUsuarioUltAnu]    VARCHAR (20)  NULL,
    [MotivoAnu]          VARCHAR (150) NULL,
    [Fecha_UltAnu]       DATETIME      NULL,
    [nom_pc]             VARCHAR (50)  NULL,
    [ip]                 VARCHAR (50)  NULL,
    [IdTipoFlujo]        NUMERIC (18)  NULL,
    [Fecha_Transac]      DATETIME      NULL,
    CONSTRAINT [PK_cp_orden_pago] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdOrdenPago] ASC),
    CONSTRAINT [FK_cp_orden_pago_ba_Banco_Cuenta] FOREIGN KEY ([IdEmpresa], [IdBanco]) REFERENCES [dbo].[ba_Banco_Cuenta] ([IdEmpresa], [IdBanco]),
    CONSTRAINT [FK_cp_orden_pago_cp_orden_pago_formapago] FOREIGN KEY ([IdFormaPago]) REFERENCES [dbo].[cp_orden_pago_formapago] ([IdFormaPago]),
    CONSTRAINT [FK_cp_orden_pago_cp_orden_pago_tipo] FOREIGN KEY ([IdTipo_op]) REFERENCES [dbo].[cp_orden_pago_tipo] ([IdTipo_op]),
    CONSTRAINT [FK_cp_orden_pago_tb_persona] FOREIGN KEY ([IdPersona]) REFERENCES [dbo].[tb_persona] ([IdPersona])
);








GO


