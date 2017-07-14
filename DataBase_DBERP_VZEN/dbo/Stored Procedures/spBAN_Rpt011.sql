﻿
--exec [dbo].[spBAN_Rpt011] 1,2,1
CREATE proc [dbo].[spBAN_Rpt011]
(
 @IdEmpresa int
,@IdBanco int
,@IdConciliacion numeric
)
as

declare @IdCtaCble varchar(20)
declare @IdPeriodo int
declare @SaldoInicial float
declare @SaldoFin float
declare @i_FechaIni datetime
declare @i_FechaFin datetime
declare @TotalRegistros as numeric
declare @Beneficiario varchar(1000)
declare @TotalConciliado float
declare @EstadoConciliado varchar(20)
declare @SaldoContable float
declare @w_TEgr float
declare @w_TEgr_ANU float
declare @w_TIng float
declare @w_TIng_ANU float
declare @o_nomBanco varchar(200)
declare @o_ba_Num_Cuenta varchar(200)

delete [dbo].[ba_BAN_Rpt011]

BEGIN --OBTENGO DATOS PARA EL REPORTE EN CASO DE QUE NO EXISTAN REGISTROS NO CONCILIADOS
BEGIN --OBTENGO SALDO CONTABLE ANTERIOR Y ESTADO DE CONCILIACION

SELECT @EstadoConciliado =  C.ca_descripcion,
@SaldoContable = A.co_SaldoBanco_EstCta
FROM ba_Conciliacion A, ba_Catalogo C
where A.IdEmpresa = @IdEmpresa
and A.IdConciliacion = @IdConciliacion 
and A.IdBanco = @IdBanco 
and C.IdCatalogo = A.IdEstado_Concil_Cat
END

BEGIN --OBTENGO NOMBRE DEL BANCO

SELECT @o_nomBanco = A.ba_descripcion, 
        @IdCtaCble= A.IdCtaCble, @o_ba_Num_Cuenta = A.ba_Num_Cuenta
FROM            ba_Banco_Cuenta A
where A.IdEmpresa=@IdEmpresa 
and A.IdBanco=@IdBanco
END

BEGIN --OBTENGO IDPERIODO

select @IdPeriodo= A.IdPeriodo
from ba_Conciliacion A
where A.IdEmpresa=@IdEmpresa
and A.IdConciliacion=@IdConciliacion
END
END

BEGIN --OBTENGO FECHA INICIAL Y FINAL DEL PERIODO

select @i_FechaIni=A.pe_FechaIni ,@i_FechaFin=A.pe_FechaFin
from ct_periodo A
where A.IdEmpresa=@IdEmpresa
and A.IdPeriodo=@IdPeriodo
END

BEGIN --CALCULO SALDO INICIAL

SELECT     @SaldoInicial=isnull( SUM(B.dc_Valor) ,0) 
FROM ct_cbtecble AS A ,ct_cbtecble_det B where 
    A.IdEmpresa = B.IdEmpresa 
AND A.IdTipoCbte = B.IdTipoCbte 
AND A.IdCbteCble = B.IdCbteCble 
and A.IdEmpresa = @IdEmpresa
and B.IdCtaCble=@IdCtaCble
AND A.cb_Fecha <= @i_FechaFin
GROUP BY A.IdEmpresa, B.IdCtaCble
END

BEGIN --CALCULO EGRESOS NO CONCILIADOS
SELECT       @w_TEgr=  ISNULL(SUM(D.dc_valor),0)
FROM            ct_cbtecble_det AS D INNER JOIN
                         ct_cbtecble AS C ON C.IdEmpresa = D.IdEmpresa AND C.IdTipoCbte = D.IdTipoCbte AND D.IdCbteCble = C.IdCbteCble
WHERE        (C.IdEmpresa = @IdEmpresa) AND (D.IdCtaCble = @IdCtaCble) AND (D.dc_Valor < 0) 
AND  C.cb_Fecha <= @i_FechaFin
AND C.cb_Estado = 'A'     
    AND C.cb_Observacion NOT LIKE '%**REVERS%' AND SUBSTRING(C.cb_Observacion, 1, 2) != '**' 
    AND ISNULL(D.dc_para_conciliar,0) = 1
    AND EXISTS
            (
            SELECT   ba_Conciliacion.IdEmpresa
            FROM            ba_Conciliacion_det_IngEgr INNER JOIN
            ba_Conciliacion ON ba_Conciliacion_det_IngEgr.IdEmpresa = ba_Conciliacion.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdConciliacion = ba_Conciliacion.IdConciliacion INNER JOIN
            ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
            WHERE ba_Conciliacion.IdEmpresa = @IdEmpresa and
            ba_Conciliacion.IdPeriodo <= @IdPeriodo and ba_Conciliacion_det_IngEgr.IdEmpresa = D.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = D.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = D.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = D.secuencia and ba_Conciliacion_det_IngEgr.checked = 0
            and ba_Conciliacion_det_IngEgr.IdConciliacion = @IdConciliacion)
END

BEGIN --CALCULO EGRESOS NO CONCILIADOS QUE ESTAN ANULADOS
SELECT       @w_TEgr_ANU=  ISNULL(SUM(D.dc_valor),0)
FROM            ct_cbtecble_det AS D INNER JOIN
                         ct_cbtecble AS C ON C.IdEmpresa = D.IdEmpresa AND C.IdTipoCbte = D.IdTipoCbte AND D.IdCbteCble = C.IdCbteCble
WHERE        (C.IdEmpresa = @IdEmpresa) AND (D.IdCtaCble = @IdCtaCble) AND (D.dc_Valor < 0) 
AND  C.cb_Fecha <= @i_FechaFin
AND C.cb_Estado = 'I'     
    --AND C.cb_Observacion NOT LIKE '%**REVERS%' AND SUBSTRING(C.cb_Observacion, 1, 2) != '**' 
    AND ISNULL(D.dc_para_conciliar,0) = 1
    AND EXISTS
            (
            SELECT   ba_Conciliacion.IdEmpresa
            FROM            ba_Conciliacion_det_IngEgr INNER JOIN
            ba_Conciliacion ON ba_Conciliacion_det_IngEgr.IdEmpresa = ba_Conciliacion.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdConciliacion = ba_Conciliacion.IdConciliacion INNER JOIN
            ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
            WHERE ba_Conciliacion.IdEmpresa = @IdEmpresa and
            ba_Conciliacion.IdPeriodo <= @IdPeriodo and ba_Conciliacion_det_IngEgr.IdEmpresa = D.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = D.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = D.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = D.secuencia and ba_Conciliacion_det_IngEgr.checked = 0
			and ba_Conciliacion_det_IngEgr.IdConciliacion = @IdConciliacion)
END

BEGIN --CALCULO INGRESOS NO CONCILIADOS
SELECT       @w_TIng = ISNULL(SUM(D.dc_valor),0)
FROM            ct_cbtecble_det AS D INNER JOIN
                         ct_cbtecble AS C ON C.IdEmpresa = D.IdEmpresa AND C.IdTipoCbte = D.IdTipoCbte AND D.IdCbteCble = C.IdCbteCble
WHERE        (C.IdEmpresa = @IdEmpresa) AND (D.IdCtaCble = @IdCtaCble) AND (D.dc_Valor > 0) 
AND C.cb_Fecha <= @i_FechaFin AND C.cb_Estado = 'A' 
AND C.cb_Observacion NOT LIKE '%**REVERS%' AND SUBSTRING(C.cb_Observacion, 1, 2) != '**'
AND ISNULL(D.dc_para_conciliar,0) = 1
AND EXISTS
            (
            SELECT   ba_Conciliacion.IdEmpresa
            FROM            ba_Conciliacion_det_IngEgr INNER JOIN
            ba_Conciliacion ON ba_Conciliacion_det_IngEgr.IdEmpresa = ba_Conciliacion.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdConciliacion = ba_Conciliacion.IdConciliacion INNER JOIN
            ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
            WHERE ba_Conciliacion.IdEmpresa = @IdEmpresa and
            ba_Conciliacion.IdPeriodo <= @IdPeriodo and ba_Conciliacion_det_IngEgr.IdEmpresa = D.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = D.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = D.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = D.secuencia and ba_Conciliacion_det_IngEgr.checked = 0
            and ba_Conciliacion_det_IngEgr.IdConciliacion = @IdConciliacion)
END

BEGIN --CALCULO INGRESOS NO CONCILIADOS QUE PUEDEN ESTAR ANULADOS
SELECT       @w_TIng_ANU = ISNULL(SUM(D.dc_valor),0)
FROM            ct_cbtecble_det AS D INNER JOIN
                         ct_cbtecble AS C ON C.IdEmpresa = D.IdEmpresa AND C.IdTipoCbte = D.IdTipoCbte AND D.IdCbteCble = C.IdCbteCble
WHERE        (C.IdEmpresa = @IdEmpresa) AND (D.IdCtaCble = @IdCtaCble) AND (D.dc_Valor > 0) 
AND C.cb_Fecha <= @i_FechaFin AND C.cb_Estado = 'I' 
AND ISNULL(D.dc_para_conciliar,0) = 1
AND EXISTS
            (
            SELECT   ba_Conciliacion.IdEmpresa
            FROM            ba_Conciliacion_det_IngEgr INNER JOIN
            ba_Conciliacion ON ba_Conciliacion_det_IngEgr.IdEmpresa = ba_Conciliacion.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdConciliacion = ba_Conciliacion.IdConciliacion INNER JOIN
            ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
            WHERE ba_Conciliacion.IdEmpresa = @IdEmpresa and
            ba_Conciliacion.IdPeriodo <= @IdPeriodo and ba_Conciliacion_det_IngEgr.IdEmpresa = D.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = D.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = D.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = D.secuencia and ba_Conciliacion_det_IngEgr.checked = 0
            and ba_Conciliacion_det_IngEgr.IdConciliacion = @IdConciliacion)
            and exists(
                SELECT        rev.IdEmpresa, rev.IdTipoCbte, rev.IdCbteCble, ct_cbtecble.cb_Fecha
                FROM            ct_cbtecble_Reversado AS rev INNER JOIN
                            ct_cbtecble ON rev.IdEmpresa_Anu = ct_cbtecble.IdEmpresa AND rev.IdTipoCbte_Anu = ct_cbtecble.IdTipoCbte AND rev.IdCbteCble_Anu = ct_cbtecble.IdCbteCble
                where ct_cbtecble.cb_Fecha <= @i_FechaIni
                and rev.IdEmpresa = c.IdEmpresa
                and rev.IdTipoCbte = c.IdTipoCbte
                and rev.IdCbteCble = c.IdCbteCble
                )
END

set @SaldoFin=ISNULL(@w_TIng+@w_TEgr_ANU+@w_TIng_ANU+@w_TEgr,0)
set @SaldoInicial=ISNULL(@SaldoInicial,0)

BEGIN --INSERTO INGRESOS NO CONCILIADOS 
INSERT INTO [dbo].[ba_BAN_Rpt011]
           ([IdEmpresa]
           ,[IdConciliacion]
           ,[IdTipoCbte]
           ,[IdCbteCble]
           ,[secuencia])

SELECT       @IdEmpresa,@IdConciliacion,C.IdTipoCbte,C.IdCbteCble,D.secuencia
FROM            ct_cbtecble_det AS D INNER JOIN
ct_cbtecble AS C ON C.IdEmpresa = D.IdEmpresa AND C.IdTipoCbte = D.IdTipoCbte AND D.IdCbteCble = C.IdCbteCble
WHERE        (C.IdEmpresa = @IdEmpresa) AND (D.IdCtaCble = @IdCtaCble) AND (D.dc_Valor > 0) 
AND  C.cb_Fecha <= @i_FechaFin AND C.cb_Estado = 'A' 
AND C.cb_Observacion NOT LIKE '%**REVERS%' AND SUBSTRING(C.cb_Observacion, 1, 2) != '**'
AND ISNULL(D.dc_para_conciliar,0) = 1
AND EXISTS
            (
            SELECT   ba_Conciliacion.IdEmpresa
            FROM            ba_Conciliacion_det_IngEgr INNER JOIN
            ba_Conciliacion ON ba_Conciliacion_det_IngEgr.IdEmpresa = ba_Conciliacion.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdConciliacion = ba_Conciliacion.IdConciliacion INNER JOIN
            ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
            WHERE             ba_Conciliacion.IdPeriodo <= @IdPeriodo and ba_Conciliacion_det_IngEgr.IdEmpresa = D.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = D.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = D.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = D.secuencia AND ba_Conciliacion.IdEmpresa = @IdEmpresa and ba_Conciliacion_det_IngEgr.checked = 0
            and ba_Conciliacion_det_IngEgr.IdConciliacion = @IdConciliacion)        
            
            and exists(
                SELECT        rev.IdEmpresa, rev.IdTipoCbte, rev.IdCbteCble, ct_cbtecble.cb_Fecha
                FROM            ct_cbtecble_Reversado AS rev INNER JOIN
                            ct_cbtecble ON rev.IdEmpresa_Anu = ct_cbtecble.IdEmpresa AND rev.IdTipoCbte_Anu = ct_cbtecble.IdTipoCbte AND rev.IdCbteCble_Anu = ct_cbtecble.IdCbteCble
                where ct_cbtecble.cb_Fecha <= @i_FechaIni
                and rev.IdEmpresa = c.IdEmpresa
                and rev.IdTipoCbte = c.IdTipoCbte
                and rev.IdCbteCble = c.IdCbteCble
                )
END

BEGIN--INSERTO INGRESOS ANULADOS QUE PUEDEN ESTAR EN ESTA CONCILIACION
INSERT INTO [dbo].[ba_BAN_Rpt011]
           ([IdEmpresa]
           ,[IdConciliacion]
           ,[IdTipoCbte]
           ,[IdCbteCble]
           ,[secuencia])

SELECT       @IdEmpresa,@IdConciliacion,C.IdTipoCbte,C.IdCbteCble,D.secuencia
FROM            ct_cbtecble_det AS D INNER JOIN
ct_cbtecble AS C ON C.IdEmpresa = D.IdEmpresa AND C.IdTipoCbte = D.IdTipoCbte AND D.IdCbteCble = C.IdCbteCble
WHERE        (C.IdEmpresa = @IdEmpresa) AND (D.IdCtaCble = @IdCtaCble) AND (D.dc_Valor > 0) 
AND  C.cb_Fecha <= @i_FechaFin AND C.cb_Estado = 'I' 
AND ISNULL(D.dc_para_conciliar,0) = 1
AND EXISTS
            (
            SELECT   ba_Conciliacion.IdEmpresa
            FROM            ba_Conciliacion_det_IngEgr INNER JOIN
            ba_Conciliacion ON ba_Conciliacion_det_IngEgr.IdEmpresa = ba_Conciliacion.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdConciliacion = ba_Conciliacion.IdConciliacion INNER JOIN
            ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
            WHERE             ba_Conciliacion.IdPeriodo <= @IdPeriodo and ba_Conciliacion_det_IngEgr.IdEmpresa = D.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = D.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = D.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = D.secuencia AND ba_Conciliacion.IdEmpresa = @IdEmpresa and ba_Conciliacion_det_IngEgr.checked = 0)
            and exists(
                SELECT        rev.IdEmpresa, rev.IdTipoCbte, rev.IdCbteCble, ct_cbtecble.cb_Fecha
                FROM            ct_cbtecble_Reversado AS rev INNER JOIN
                            ct_cbtecble ON rev.IdEmpresa_Anu = ct_cbtecble.IdEmpresa AND rev.IdTipoCbte_Anu = ct_cbtecble.IdTipoCbte AND rev.IdCbteCble_Anu = ct_cbtecble.IdCbteCble
                where ct_cbtecble.cb_Fecha <= @i_FechaIni
                and rev.IdEmpresa = c.IdEmpresa
                and rev.IdTipoCbte = c.IdTipoCbte
                and rev.IdCbteCble = c.IdCbteCble
                )
END

BEGIN --INSERTO EGRESOS NO CONCILIADOS
INSERT INTO [dbo].[ba_BAN_Rpt011]
           ([IdEmpresa]
           ,[IdConciliacion]
           ,[IdTipoCbte]
           ,[IdCbteCble]
           ,[secuencia])

SELECT       @IdEmpresa,@IdConciliacion,C.IdTipoCbte,C.IdCbteCble,D.secuencia
FROM            ct_cbtecble_det AS D INNER JOIN
ct_cbtecble AS C ON C.IdEmpresa = D.IdEmpresa AND C.IdTipoCbte = D.IdTipoCbte AND D.IdCbteCble = C.IdCbteCble
WHERE        (C.IdEmpresa = @IdEmpresa) AND (D.IdCtaCble = @IdCtaCble) AND (D.dc_Valor < 0) 
AND C.cb_Fecha <= @i_FechaFin AND C.cb_Estado = 'A' 
AND C.cb_Observacion NOT LIKE '%**REVERS%' AND SUBSTRING(C.cb_Observacion, 1, 2) != '**'
AND ISNULL(D.dc_para_conciliar,0) = 1
AND EXISTS
            (
            SELECT   ba_Conciliacion.IdEmpresa
            FROM            ba_Conciliacion_det_IngEgr INNER JOIN
            ba_Conciliacion ON ba_Conciliacion_det_IngEgr.IdEmpresa = ba_Conciliacion.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdConciliacion = ba_Conciliacion.IdConciliacion INNER JOIN
            ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
            WHERE ba_Conciliacion.IdPeriodo <= @IdPeriodo and ba_Conciliacion_det_IngEgr.IdEmpresa = D.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = D.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = D.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = D.secuencia and ba_Conciliacion.IdEmpresa = @IdEmpresa and ba_Conciliacion_det_IngEgr.checked = 0
            and ba_Conciliacion_det_IngEgr.IdConciliacion = @IdConciliacion)
            
END

BEGIN --INSERTO EGRESOS NO CONCILIADOS QUE ESTEN ANULADOS
INSERT INTO [dbo].[ba_BAN_Rpt011]
           ([IdEmpresa]
           ,[IdConciliacion]
           ,[IdTipoCbte]
           ,[IdCbteCble]
           ,[secuencia])

SELECT       @IdEmpresa,@IdConciliacion,C.IdTipoCbte,C.IdCbteCble,D.secuencia
FROM            ct_cbtecble_det AS D INNER JOIN
ct_cbtecble AS C ON C.IdEmpresa = D.IdEmpresa AND C.IdTipoCbte = D.IdTipoCbte AND D.IdCbteCble = C.IdCbteCble
WHERE        (C.IdEmpresa = @IdEmpresa) AND (D.IdCtaCble = @IdCtaCble) AND (D.dc_Valor < 0) 
AND C.cb_Fecha <= @i_FechaFin AND C.cb_Estado = 'I' 
AND ISNULL(D.dc_para_conciliar,0) = 1
AND EXISTS
            (
            SELECT   ba_Conciliacion.IdEmpresa
            FROM            ba_Conciliacion_det_IngEgr INNER JOIN
            ba_Conciliacion ON ba_Conciliacion_det_IngEgr.IdEmpresa = ba_Conciliacion.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdConciliacion = ba_Conciliacion.IdConciliacion INNER JOIN
            ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
            WHERE ba_Conciliacion.IdPeriodo <= @IdPeriodo and ba_Conciliacion_det_IngEgr.IdEmpresa = D.IdEmpresa AND 
            ba_Conciliacion_det_IngEgr.IdTipocbte = D.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = D.IdCbteCble AND 
            ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = D.secuencia and ba_Conciliacion.IdEmpresa = @IdEmpresa and ba_Conciliacion_det_IngEgr.checked = 0
			and ba_Conciliacion_det_IngEgr.IdConciliacion = @IdConciliacion)
            and exists(
                SELECT        rev.IdEmpresa, rev.IdTipoCbte, rev.IdCbteCble, ct_cbtecble.cb_Fecha
                FROM            ct_cbtecble_Reversado AS rev INNER JOIN
                            ct_cbtecble ON rev.IdEmpresa_Anu = ct_cbtecble.IdEmpresa AND rev.IdTipoCbte_Anu = ct_cbtecble.IdTipoCbte AND rev.IdCbteCble_Anu = ct_cbtecble.IdCbteCble
                where ct_cbtecble.cb_Fecha <= @i_FechaIni
                and rev.IdEmpresa = c.IdEmpresa
                and rev.IdTipoCbte = c.IdTipoCbte
                and rev.IdCbteCble = c.IdCbteCble
                )
END

BEGIN --VALIDO QUE EXISTAN REGISTROS NO CONCILIADOS PARA MOSTRAR EN REPORTE
SELECT  @TotalRegistros= isnull(count(*),0) FROM    [dbo].[ba_BAN_Rpt011] where IdEmpresa = @IdEmpresa
END

BEGIN --CALCULO EGRESOS CONCILIADOS
SELECT     @w_TEgr=   ISNULL(SUM(ct_cbtecble_det.dc_Valor) ,0)
FROM            ba_Conciliacion AS A INNER JOIN
                         ba_Conciliacion_det_IngEgr ON A.IdEmpresa = ba_Conciliacion_det_IngEgr.IdEmpresa AND A.IdConciliacion = ba_Conciliacion_det_IngEgr.IdConciliacion INNER JOIN
                         ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
                         ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
                         ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
WHERE        (A.IdEmpresa = @IdEmpresa) AND (A.IdConciliacion = @IdConciliacion) AND (A.IdBanco = @IdBanco) AND (ba_Conciliacion_det_IngEgr.checked = 1)  AND (ct_cbtecble_det.dc_Valor < 0)
END

BEGIN --CALCULO INGRESOS CONCILIADOS
SELECT     @w_TIng=   ISNULL(SUM(ct_cbtecble_det.dc_Valor) ,0)
FROM            ba_Conciliacion AS A INNER JOIN
                         ba_Conciliacion_det_IngEgr ON A.IdEmpresa = ba_Conciliacion_det_IngEgr.IdEmpresa AND A.IdConciliacion = ba_Conciliacion_det_IngEgr.IdConciliacion INNER JOIN
                         ct_cbtecble_det ON ba_Conciliacion_det_IngEgr.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
                         ba_Conciliacion_det_IngEgr.IdTipocbte = ct_cbtecble_det.IdTipoCbte AND ba_Conciliacion_det_IngEgr.IdCbteCble = ct_cbtecble_det.IdCbteCble AND 
                         ba_Conciliacion_det_IngEgr.SecuenciaCbteCble = ct_cbtecble_det.secuencia
WHERE        (A.IdEmpresa = @IdEmpresa) AND (A.IdConciliacion = @IdConciliacion) AND (A.IdBanco = @IdBanco) AND (ba_Conciliacion_det_IngEgr.checked = 1)  AND (ct_cbtecble_det.dc_Valor > 0)
END

set @TotalConciliado = ISNULL(@w_TIng,0) + ISNULL(@w_TEgr,0)

if (@TotalRegistros>0)
begin
SELECT        A.IdEmpresa, A.IdConciliacion, A.IdBanco, A.IdPeriodo, dbo.ba_Banco_Cuenta.ba_descripcion AS nom_banco, dbo.ba_Banco_Cuenta.ba_Num_Cuenta, 
                         dbo.ba_Banco_Cuenta.IdCtaCble, CAST(dbo.ba_Cbte_Ban.cb_Fecha AS date) AS Fecha, dbo.ct_cbtecble_tipo.CodTipoCbte, 
                         dbo.ct_cbtecble_tipo.tc_TipoCbte AS Tipo_Cbte,dbo.ba_BAN_Rpt011.IdCbteCble, dbo.ba_BAN_Rpt011.IdTipoCbte,dbo.ba_BAN_Rpt011.secuencia AS SecuenciaCbte, 
                         isnull(dbo.ct_cbtecble_det.dc_Valor,0) AS Valor, dbo.ct_cbtecble_det.dc_Observacion AS Observacion, 
                         dbo.ba_Cbte_Ban.cb_Cheque AS Cheque, ISNULL(@SaldoInicial, 0) AS SaldoInicial, ISNULL(@SaldoFin, 0) AS SaldoFinal, RTRIM(dbo.ct_cbtecble_tipo.tc_TipoCbte) 
                         + 'S GIRADOS Y NO COBRADOS' AS Titulo_grupo, CASE WHEN ISNULL(ba_Cbte_Ban.cb_Cheque, '') <> '' THEN rtrim(ct_cbtecble_tipo.CodTipoCbte) 
                         + '#:' + ba_Cbte_Ban.cb_Cheque + ' cbte:' + rtrim(CAST(ba_BAN_Rpt011.IdCbteCble AS varchar(20))) ELSE rtrim(ct_cbtecble_tipo.CodTipoCbte) 
                         + '#: ' + rtrim(CAST(ba_BAN_Rpt011.IdCbteCble AS varchar(20))) END AS referencia, dbo.tb_empresa.em_ruc AS ruc_empresa, 
                         dbo.tb_empresa.em_nombre AS nom_empresa, A.co_SaldoBanco_EstCta AS SaldoBanco_EstCta, A.IdEstado_Concil_Cat AS Estado_Conciliacion, 
                         case when dbo.ba_Cbte_Ban.Estado = 'I' THEN '**ANULADO** ' ELSE '' END +
						 CASE WHEN dbo.ba_Cbte_Ban.cb_giradoA IS NULL THEN dbo.ba_Cbte_Ban.cb_Observacion ELSE 
                         dbo.ba_Cbte_Ban.cb_giradoA END AS GiradoA,
						 
						  dbo.ba_TipoFlujo.IdTipoFlujo, dbo.ba_TipoFlujo.Descricion AS nom_tipo_flujo, ISNULL(@TotalConciliado, 0) 
                         AS Total_Conciliado, @i_FechaIni AS FechaIni, @i_FechaFin AS FechaFin
FROM            ba_TipoFlujo RIGHT OUTER JOIN
                         ba_BAN_Rpt011 INNER JOIN
                         ba_Conciliacion AS A INNER JOIN
                         ba_Banco_Cuenta ON A.IdEmpresa = ba_Banco_Cuenta.IdEmpresa AND A.IdBanco = ba_Banco_Cuenta.IdBanco INNER JOIN
                         tb_empresa ON A.IdEmpresa = tb_empresa.IdEmpresa ON ba_BAN_Rpt011.IdConciliacion = A.IdConciliacion AND ba_BAN_Rpt011.IdEmpresa = A.IdEmpresa LEFT OUTER JOIN
                         ba_Cbte_Ban ON ba_BAN_Rpt011.IdEmpresa = ba_Cbte_Ban.IdEmpresa AND ba_BAN_Rpt011.IdTipoCbte = ba_Cbte_Ban.IdTipocbte AND ba_BAN_Rpt011.IdCbteCble = ba_Cbte_Ban.IdCbteCble LEFT OUTER JOIN
                         ct_cbtecble_tipo INNER JOIN
                         ct_cbtecble_det ON ct_cbtecble_tipo.IdTipoCbte = ct_cbtecble_det.IdTipoCbte AND ct_cbtecble_tipo.IdEmpresa = ct_cbtecble_det.IdEmpresa ON ba_BAN_Rpt011.IdEmpresa = ct_cbtecble_det.IdEmpresa AND 
                         ba_BAN_Rpt011.IdTipoCbte = ct_cbtecble_det.IdTipoCbte AND ba_BAN_Rpt011.IdCbteCble = ct_cbtecble_det.IdCbteCble AND ba_BAN_Rpt011.secuencia = ct_cbtecble_det.secuencia ON 
                         ba_TipoFlujo.IdEmpresa = ba_Cbte_Ban.IdEmpresa AND ba_TipoFlujo.IdTipoFlujo = ba_Cbte_Ban.IdTipoFlujo
where dbo.ba_BAN_Rpt011.IdEmpresa = @IdEmpresa AND isnull(ct_cbtecble_det.dc_para_conciliar,0) = 1
end 
else
begin

            SELECT                
            A.IdEmpresa                    ,cast(@IdConciliacion as numeric) IdConciliacion    ,@IdBanco IdBanco        ,@IdPeriodo IdPeriodo        ,@o_nomBanco nom_banco        ,@o_ba_Num_Cuenta ba_Num_Cuenta    
            ,@IdCtaCble IdCtaCble        ,cast(@i_FechaIni as date ) Fecha                ,'' CodTipoCbte         ,'NO HAY REGISTRO' Tipo_Cbte                ,0 Secuencia        ,cast(0  as numeric) as IdCbteCble  
            ,0 IdTipocbte                ,0 SecuenciaCbte                ,cast(0 as float) Valor                ,'NO HAY REGISTRO' Observacion                ,''    Cheque    
            ,ISNULL(@SaldoInicial,0) SaldoInicial    ,ISNULL(@SaldoFin,0) SaldoFinal            ,''Titulo_grupo            ,'NO HAY REGISTRO' referencia                ,A.em_ruc ruc_empresa    ,A.em_nombre nom_empresa
            ,ISNULL(@SaldoContable,0) SaldoBanco_EstCta        ,@EstadoConciliado Estado_Conciliacion ,'' GiradoA
            ,null IdTipoFlujo            ,null AS nom_tipo_flujo            , ISNULL(@TotalConciliado,0) Total_Conciliado
            ,cast(@i_FechaIni as date) as FechaIni,cast(@i_FechaFin as date )as FechaFin
            from tb_empresa A
            where A.IdEmpresa=@IdEmpresa 
end


