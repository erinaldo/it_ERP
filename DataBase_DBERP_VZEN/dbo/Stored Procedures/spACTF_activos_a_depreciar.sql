﻿
--exec [dbo].[spACTF_activos_a_depreciar] 1,'01/03/2017','31/03/2017','admin'
CREATE PROCEDURE [dbo].[spACTF_activos_a_depreciar]
(
@IdEmpresa int,
@Fecha_ini datetime,
@Fecha_fin datetime,
@IdUsuario varchar(25)
)
AS
BEGIN

DECLARE @Dias_depr int 
SET @Dias_depr = DATEDIFF(DAY,@Fecha_ini,@Fecha_fin)+1



DELETE Af_spACTF_activos_a_depreciar
WHERE IdEmpresa = @IdEmpresa and IdUsuario = @IdUsuario


--INSERTO LOS ACTIVOS A DEPRECIAR
INSERT INTO [dbo].[Af_spACTF_activos_a_depreciar]
           ([IdEmpresa]
           ,[IdActivoFijo]
           ,[IdUsuario]
           ,[Af_costo_compra]
           ,[Af_depreciacion_acum]
           ,[Af_dias_a_depreciar]
           ,[Af_valor_depr_diario]
           ,[Af_valor_depreciacion])

SELECT Af_Activo_fijo.IdEmpresa,
		Af_Activo_fijo.IdActivoFijo,
		@IdUsuario,
		Af_costo_compra, 
		isnull(Af_Depreciacion_acum,0) + ISNULL(Depreciacion_acumulada.depr_acum,0), 
		iif(Af_fecha_ini_depre between @Fecha_ini and @Fecha_fin,DATEDIFF(DAY,Af_fecha_ini_depre,@Fecha_fin),@Dias_depr),		
		(((Af_costo_compra - isnull(Af_ValorResidual,0)) /Af_Vida_Util)/365),
		0
FROM   Af_Activo_fijo_tipo INNER JOIN
       Af_Activo_fijo ON Af_Activo_fijo_tipo.IdEmpresa = Af_Activo_fijo.IdEmpresa AND Af_Activo_fijo_tipo.IdActijoFijoTipo = Af_Activo_fijo.IdActijoFijoTipo LEFT JOIN
(
	SELECT det.IdEmpresa, det.IdActivoFijo, SUM(det.Valor_Depreciacion) depr_acum FROM Af_Depreciacion cab
	inner join Af_Depreciacion_Det det 
	on cab.IdEmpresa = det.IdEmpresa
	and cab.IdTipoDepreciacion = det.IdTipoDepreciacion
	and cab.IdDepreciacion = det.IdDepreciacion
	where cab.IdEmpresa = @IdEmpresa
	and cab.Fecha_Depreciacion < @Fecha_ini
	group by det.IdEmpresa, det.IdActivoFijo
) Depreciacion_acumulada ON Depreciacion_acumulada.IdEmpresa = Af_Activo_fijo.IdEmpresa
and Depreciacion_acumulada.IdActivoFijo = Af_Activo_fijo.IdActivoFijo
WHERE Estado_Proceso = 'TIP_ESTADO_AF_ACTIVO' AND ((@Fecha_ini BETWEEN Af_fecha_ini_depre AND Af_fecha_fin_depre )
or (@Fecha_fin BETWEEN Af_fecha_ini_depre AND Af_fecha_fin_depre )) and Af_Activo_fijo_tipo.Se_Deprecia = 1


--CALCULO DE LA DEPRECIACION ACTUAL
update Af_spACTF_activos_a_depreciar set Af_valor_depreciacion = IIF((Af_dias_a_depreciar * Af_valor_depr_diario) > (Af_costo_compra - Af_depreciacion_acum),(Af_costo_compra - Af_depreciacion_acum),(Af_dias_a_depreciar * Af_valor_depr_diario))
--ELIMINO LOS QUE YA NO DEBEN DEPRECIARSE XQ EL VALOR ES 0
DELETE Af_spACTF_activos_a_depreciar WHERE ROUND(Af_valor_depreciacion,2) <= 0


SELECT        Af_spACTF_activos_a_depreciar.IdEmpresa, Af_spACTF_activos_a_depreciar.IdActivoFijo, Af_Activo_fijo.CodActivoFijo, Af_Activo_fijo.Af_Nombre, 
                         Af_spACTF_activos_a_depreciar.IdUsuario, Af_spACTF_activos_a_depreciar.Af_costo_compra, Af_spACTF_activos_a_depreciar.Af_depreciacion_acum, 
                         Af_spACTF_activos_a_depreciar.Af_valor_depreciacion, Af_Activo_fijo_tipo.IdActijoFijoTipo, Af_Activo_fijo_tipo.Af_Descripcion AS nom_tipo, 
                         Af_Activo_fijo_Categoria.IdCategoriaAF, Af_Activo_fijo_Categoria.Descripcion AS nom_categoria, Af_Activo_fijo.Af_porcentaje_deprec,
						  Af_spACTF_activos_a_depreciar.Af_costo_compra -Af_spACTF_activos_a_depreciar.Af_depreciacion_acum Valor_importe
FROM            Af_Activo_fijo_tipo INNER JOIN
                         Af_Activo_fijo_Categoria ON Af_Activo_fijo_tipo.IdEmpresa = Af_Activo_fijo_Categoria.IdEmpresa AND 
                         Af_Activo_fijo_tipo.IdActijoFijoTipo = Af_Activo_fijo_Categoria.IdActivoFijoTipo INNER JOIN
                         Af_Activo_fijo ON Af_Activo_fijo_Categoria.IdEmpresa = Af_Activo_fijo.IdEmpresa AND 
                         Af_Activo_fijo_Categoria.IdCategoriaAF = Af_Activo_fijo.IdCategoriaAF RIGHT OUTER JOIN
                         Af_spACTF_activos_a_depreciar ON Af_Activo_fijo.IdEmpresa = Af_spACTF_activos_a_depreciar.IdEmpresa AND Af_Activo_fijo.IdActivoFijo = Af_spACTF_activos_a_depreciar.IdActivoFijo
WHERE Af_spACTF_activos_a_depreciar.IdEmpresa = @IdEmpresa and Af_spACTF_activos_a_depreciar.IdUsuario = @IdUsuario
END