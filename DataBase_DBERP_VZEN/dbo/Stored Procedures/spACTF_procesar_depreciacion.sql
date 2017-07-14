CREATE PROCEDURE spACTF_procesar_depreciacion
(
@IdEmpresa int,
@IdPeriodo int
)
AS
BEGIN
SET @IdEmpresa = 1
SET @IdPeriodo = 201610

DECLARE @Fecha_ini datetime
DECLARE @Fecha_fin datetime

select @Fecha_ini = pe_FechaIni, @Fecha_fin = pe_FechaFin from ct_periodo where IdEmpresa = @IdEmpresa and IdPeriodo = @IdPeriodo

SELECT * FROM Af_Activo_fijo WHERE @Fecha_ini BETWEEN Af_fecha_ini_depre AND Af_fecha_fin_depre and Estado_Proceso = 'TIP_ESTADO_AF_ACTIVO'

select * from Af_Depreciacion_Det det
inner join Af_Depreciacion cab
on cab.IdEmpresa = det.IdEmpresa
and cab.IdDepreciacion = det.IdDepreciacion
and cab.IdTipoDepreciacion = det.IdTipoDepreciacion
where cab.Fecha_Depreciacion < @Fecha_ini
END