﻿
CREATE  PROCEDURE  [dbo].[spROL_Archivo_MTE] 
 @IdEmpresa int,
 @FechaI date,
 @FechaF date,
 @IdRubro Int
	
AS
BEGIN
	
	SET NOCOUNT ON;

   
select Tab_Valores_Decimos_x_Empleado.*,tab_DiasTrabajados_x_Empleado.DiasTrabajados as Dias_Decimo,isnull(Tab_Dias_Faltados_x_Empl.TotalDiasF,0) as TotalDiasF,tab_DiasTrabajados_x_Empleado.DiasTrabajados-ISNULL( Tab_Dias_Faltados_x_Empl.TotalDiasF,0) as DiasA_considerar_Decimo 
from 
(
			select A.IdEmpresa, A.IdEmpleado, A.pe_apellido,A.pe_nombre,A.pe_cedulaRuc,A.CodigoSectorial,A.ca_descripcion, sum(A.valor) as Valor, A.pe_sexo
			from 
			(
					SELECT    ro_empleado.IdEmpresa, ro_empleado.IdEmpleado, dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, dbo.tb_persona.pe_cedulaRuc, dbo.ro_empleado.CodigoSectorial, dbo.ro_cargo.ca_descripcion, 					
											 dbo.ro_empleado.em_status, dbo.ro_periodo.pe_FechaIni, dbo.ro_periodo.pe_FechaFin, dbo.ro_rol_detalle_x_rubro_acumulado.Valor, 
											 dbo.ro_rol_detalle_x_rubro_acumulado.Estado,tb_persona.pe_sexo
					FROM            dbo.ro_empleado INNER JOIN
											 dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona INNER JOIN
											 dbo.ro_cargo ON dbo.ro_empleado.IdEmpresa = dbo.ro_cargo.IdEmpresa AND dbo.ro_empleado.IdCargo = dbo.ro_cargo.IdCargo INNER JOIN
											 dbo.ro_rol_detalle_x_rubro_acumulado ON dbo.ro_empleado.IdEmpresa = dbo.ro_rol_detalle_x_rubro_acumulado.IdEmpresa AND 
											 dbo.ro_empleado.IdEmpleado = dbo.ro_rol_detalle_x_rubro_acumulado.IdEmpleado INNER JOIN
											 dbo.ro_periodo ON dbo.ro_rol_detalle_x_rubro_acumulado.IdEmpresa = dbo.ro_periodo.IdEmpresa AND 
											 dbo.ro_rol_detalle_x_rubro_acumulado.IdPeriodo = dbo.ro_periodo.IdPeriodo
					       where ro_empleado.IdEmpresa=1 
						   and ro_empleado.em_status='EST_ACT'
						   and ro_empleado.em_estado='A'
						   and  dbo.ro_periodo.pe_FechaIni between @FechaI and @FechaF
						   and  dbo.ro_periodo.pe_FechaFin between @FechaI and @FechaF
			) A
			group by A.IdEmpresa,A.IdEmpleado, A.pe_apellido,A.pe_nombre,A.pe_cedulaRuc,A.CodigoSectorial,A.ca_descripcion,A.pe_sexo

) Tab_Valores_Decimos_x_Empleado  
left join (
		select C.IdEmpresa,C.IdEmpleado,  sum(diasDescuento) as TotalDiasF
		from ro_DiasFaltados_x_Empleado C
		where IdEmpresa=1
		and FechaDescuentaRol between @FechaI and @FechaF
		group by C.IdEmpresa,C.IdEmpleado
) Tab_Dias_Faltados_x_Empl 
on Tab_Valores_Decimos_x_Empleado.IdEmpresa=Tab_Dias_Faltados_x_Empl.IdEmpresa
and Tab_Valores_Decimos_x_Empleado.IdEmpleado=Tab_Dias_Faltados_x_Empl.IdEmpleado

left join(
select CON.IdEmpresa,CON.IdEmpleado, IIF(FechaInicio< @FechaI,datediff(DD,@FechaI,@FechaF) , datediff(DD,FechaInicio,@FechaF)) as DiasTrabajados from ro_contrato as CON
where CON.EstadoContrato='ECT_ACT' and CON.Estado='A'and  CON.IdEmpresa=@IdEmpresa) tab_DiasTrabajados_x_Empleado
on tab_DiasTrabajados_x_Empleado.IdEmpresa=Tab_Valores_Decimos_x_Empleado.IdEmpresa and tab_DiasTrabajados_x_Empleado.IdEmpleado=Tab_Valores_Decimos_x_Empleado.IdEmpleado
end









