﻿
create view  vwROL_Rpt022 as 
SELECT        dbo.ro_empleado.IdEmpresa, dbo.ro_empleado_x_ro_tipoNomina.IdTipoNomina, dbo.ro_Departamento.IdDepartamento, dbo.ro_empleado.IdEmpleado, 
                         dbo.ro_prestamo_detalle.IdPrestamo, dbo.tb_persona.pe_cedulaRuc, dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, 
                         dbo.ro_prestamo_detalle.EstadoPago, dbo.ro_Nomina_Tipo.Descripcion, dbo.ro_Departamento.de_descripcion, 
                         dbo.ro_prestamo_detalle.TotalCuota AS Total_Prestamo, IIF(dbo.ro_prestamo_detalle.EstadoPago = 'CAN', dbo.ro_prestamo_detalle.TotalCuota, 0) 
                         AS Total_Cancelado, IIF(dbo.ro_prestamo_detalle.EstadoPago = 'PEN', TotalCuota, 0) AS Total_Pendiente_pago, dbo.ro_prestamo_detalle.FechaPago,
						  dbo.ro_prestamo.Observacion
FROM            dbo.ro_prestamo_detalle INNER JOIN
                         dbo.ro_prestamo ON dbo.ro_prestamo_detalle.IdEmpresa = dbo.ro_prestamo.IdEmpresa AND 
                         dbo.ro_prestamo_detalle.IdPrestamo = dbo.ro_prestamo.IdPrestamo INNER JOIN
                         dbo.ro_empleado ON dbo.ro_prestamo.IdEmpresa = dbo.ro_empleado.IdEmpresa AND dbo.ro_prestamo.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_prestamo.IdEmpleado = dbo.ro_empleado.IdEmpleado INNER JOIN
                         dbo.ro_empleado_x_ro_tipoNomina ON dbo.ro_empleado.IdEmpresa = dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa AND 
                         dbo.ro_empleado.IdEmpleado = dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado INNER JOIN
                         dbo.ro_Nomina_Tipo ON dbo.ro_prestamo.IdEmpresa = dbo.ro_Nomina_Tipo.IdEmpresa AND 
                         dbo.ro_prestamo.IdNomina_Tipo = dbo.ro_Nomina_Tipo.IdNomina_Tipo AND dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa = dbo.ro_Nomina_Tipo.IdEmpresa AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdTipoNomina = dbo.ro_Nomina_Tipo.IdNomina_Tipo INNER JOIN
                         dbo.ro_Departamento ON dbo.ro_empleado.IdEmpresa = dbo.ro_Departamento.IdEmpresa AND 
                         dbo.ro_empleado.IdDepartamento = dbo.ro_Departamento.IdDepartamento INNER JOIN
                         dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona