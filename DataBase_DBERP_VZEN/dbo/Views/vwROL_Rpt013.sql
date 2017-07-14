
creATE VIEW [dbo].[vwROL_Rpt013] AS 
SELECT        dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, dbo.tb_persona.pe_cedulaRuc, dbo.ro_empleado.IdEmpresa, dbo.ro_empleado.IdEmpleado, 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.IdSolicitudVaca, tb_personaRemplaza.pe_apellido AS pe_apellido_remplazo, 
                         tb_personaRemplaza.pe_nombre AS pe_nombre_remplazo, dbo.ro_Solicitud_Vacaciones_x_empleado.Anio_Desde, 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.Anio_Hasta, dbo.ro_Solicitud_Vacaciones_x_empleado.Dias_pendiente, 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.Dias_a_disfrutar, dbo.ro_Solicitud_Vacaciones_x_empleado.Dias_q_Corresponde, 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.AnioServicio, dbo.ro_Solicitud_Vacaciones_x_empleado.Fecha, dbo.ro_Solicitud_Vacaciones_x_empleado.Fecha_Desde, 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.Fecha_Hasta, dbo.ro_Solicitud_Vacaciones_x_empleado.Fecha_Retorno, 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.Observacion, dbo.ro_Solicitud_Vacaciones_x_empleado.Gozadas_Pgadas, 
                         dbo.ro_Historico_Liquidacion_Vacaciones.FechaPago, dbo.ro_Historico_Liquidacion_Vacaciones.Iess, dbo.ro_Historico_Liquidacion_Vacaciones_Det.Anio, 
                         dbo.ro_Historico_Liquidacion_Vacaciones_Det.Mes, dbo.ro_Historico_Liquidacion_Vacaciones_Det.Total_Remuneracion, 
                         dbo.ro_Historico_Liquidacion_Vacaciones_Det.Total_Vacaciones, dbo.ro_Historico_Liquidacion_Vacaciones_Det.Valor_Cancelar, 
                         dbo.ro_Departamento.de_descripcion, dbo.ro_empleado.em_fecha_ingreso
FROM            dbo.ro_empleado AS ro_empleado_remplaza RIGHT OUTER JOIN
                         dbo.tb_persona AS tb_personaRemplaza ON ro_empleado_remplaza.IdPersona = tb_personaRemplaza.IdPersona RIGHT OUTER JOIN
                         dbo.ro_Solicitud_Vacaciones_x_empleado INNER JOIN
                         dbo.ro_Historico_Liquidacion_Vacaciones ON dbo.ro_Solicitud_Vacaciones_x_empleado.IdEmpresa = dbo.ro_Historico_Liquidacion_Vacaciones.IdEmpresa AND 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.IdEmpleado = dbo.ro_Historico_Liquidacion_Vacaciones.IdEmpleado AND 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.IdSolicitudVaca = dbo.ro_Historico_Liquidacion_Vacaciones.IdLiquidacion INNER JOIN
                         dbo.ro_Historico_Liquidacion_Vacaciones_Det ON 
                         dbo.ro_Historico_Liquidacion_Vacaciones.IdEmpresa = dbo.ro_Historico_Liquidacion_Vacaciones_Det.IdEmpresa AND 
                         dbo.ro_Historico_Liquidacion_Vacaciones.IdNomina_Tipo = dbo.ro_Historico_Liquidacion_Vacaciones_Det.IdNominatipo AND 
                         dbo.ro_Historico_Liquidacion_Vacaciones.IdLiquidacion = dbo.ro_Historico_Liquidacion_Vacaciones_Det.IdSolicitud_Vacaciones AND 
                         dbo.ro_Historico_Liquidacion_Vacaciones.IdEmpleado = dbo.ro_Historico_Liquidacion_Vacaciones_Det.IdEmpleado INNER JOIN
                         dbo.ro_empleado ON dbo.ro_Solicitud_Vacaciones_x_empleado.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_Solicitud_Vacaciones_x_empleado.IdEmpleado = dbo.ro_empleado.IdEmpleado INNER JOIN
                         dbo.ro_Departamento ON dbo.ro_empleado.IdEmpresa = dbo.ro_Departamento.IdEmpresa AND 
                         dbo.ro_empleado.IdDepartamento = dbo.ro_Departamento.IdDepartamento INNER JOIN
                         dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona ON 
                         ro_empleado_remplaza.IdEmpresa = dbo.ro_Solicitud_Vacaciones_x_empleado.IdEmpresa AND 
                         ro_empleado_remplaza.IdEmpleado = dbo.ro_Solicitud_Vacaciones_x_empleado.IdEmpleado_aprue
WHERE        (dbo.ro_empleado.IdEmpresa = 1) AND (dbo.ro_Solicitud_Vacaciones_x_empleado.IdSolicitudVaca = 1) AND (dbo.ro_empleado.IdEmpleado = 50)


