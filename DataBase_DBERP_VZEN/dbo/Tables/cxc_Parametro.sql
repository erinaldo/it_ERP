﻿CREATE TABLE [dbo].[cxc_Parametro] (
    [IdEmpresa]                            INT          NOT NULL,
    [pa_tipoND_x_CheqProtestado]           INT          NOT NULL,
    [pa_IdCaja_x_cobros_x_CXC]             INT          NULL,
    [pa_IdTipoMoviCaja_x_Cobros_x_cliente] INT          NULL,
    [pa_IdTipoCbteCble_CxC]                INT          NULL,
    [pa_IdTipoCbteCble_CxC_ANU]            INT          NULL,
    [IdUsuarioUltMod]                      VARCHAR (20) NULL,
    [FechaUltMod]                          DATETIME     NULL,
    [pa_IdCaja_x_Default]                  INT          NULL,
    [pa_IdTipoCbte_x_conciliacion]         INT          NULL,
    [pa_IdCobro_tipo_Comision_TC]          VARCHAR (20) NULL,
    [pa_IdCobro_tipo_default]              VARCHAR (20) NULL,
    CONSTRAINT [PK_cxc_Parametro] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC),
    CONSTRAINT [FK_cxc_Parametro_caj_Caja] FOREIGN KEY ([IdEmpresa], [pa_IdCaja_x_cobros_x_CXC]) REFERENCES [dbo].[caj_Caja] ([IdEmpresa], [IdCaja]),
    CONSTRAINT [FK_cxc_Parametro_caj_Caja_Movimiento_Tipo] FOREIGN KEY ([pa_IdTipoMoviCaja_x_Cobros_x_cliente]) REFERENCES [dbo].[caj_Caja_Movimiento_Tipo] ([IdTipoMovi]),
    CONSTRAINT [FK_cxc_Parametro_caj_Caja1] FOREIGN KEY ([IdEmpresa], [pa_IdCaja_x_Default]) REFERENCES [dbo].[caj_Caja] ([IdEmpresa], [IdCaja]),
    CONSTRAINT [FK_cxc_Parametro_ct_cbtecble_tipo] FOREIGN KEY ([IdEmpresa], [pa_IdTipoCbteCble_CxC]) REFERENCES [dbo].[ct_cbtecble_tipo] ([IdEmpresa], [IdTipoCbte]),
    CONSTRAINT [FK_cxc_Parametro_ct_cbtecble_tipo1] FOREIGN KEY ([IdEmpresa], [pa_IdTipoCbteCble_CxC_ANU]) REFERENCES [dbo].[ct_cbtecble_tipo] ([IdEmpresa], [IdTipoCbte]),
    CONSTRAINT [FK_cxc_Parametro_ct_cbtecble_tipo2] FOREIGN KEY ([IdEmpresa], [pa_IdTipoCbte_x_conciliacion]) REFERENCES [dbo].[ct_cbtecble_tipo] ([IdEmpresa], [IdTipoCbte]),
    CONSTRAINT [FK_cxc_Parametro_cxc_cobro_tipo] FOREIGN KEY ([pa_IdCobro_tipo_Comision_TC]) REFERENCES [dbo].[cxc_cobro_tipo] ([IdCobro_tipo]),
    CONSTRAINT [FK_cxc_Parametro_cxc_cobro_tipo1] FOREIGN KEY ([pa_IdCobro_tipo_default]) REFERENCES [dbo].[cxc_cobro_tipo] ([IdCobro_tipo]),
    CONSTRAINT [FK_cxc_Parametro_fa_TipoNota] FOREIGN KEY ([pa_tipoND_x_CheqProtestado]) REFERENCES [dbo].[fa_TipoNota] ([IdTipoNota]),
    CONSTRAINT [FK_cxc_Parametro_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);



