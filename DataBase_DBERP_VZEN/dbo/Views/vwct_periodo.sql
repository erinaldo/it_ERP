﻿
CREate VIEW [dbo].[vwct_periodo] as
SELECT        dbo.ct_periodo.IdEmpresa, dbo.ct_periodo.IdPeriodo, dbo.ct_periodo.IdanioFiscal, dbo.ct_periodo.pe_mes, dbo.ct_periodo.pe_FechaIni, dbo.ct_periodo.pe_FechaFin, 
                         dbo.ct_periodo.pe_cerrado, dbo.ct_periodo.pe_estado, dbo.tb_mes.idMes, dbo.tb_mes.smes, dbo.tb_mes.Nemonico, dbo.tb_mes.smesIngles
FROM            dbo.ct_periodo INNER JOIN
                         dbo.tb_mes ON dbo.ct_periodo.pe_mes = dbo.tb_mes.idMes

