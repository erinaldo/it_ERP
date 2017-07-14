CREATE view Fj_servindustrias.vwro_marcaciones_x_empleado_x_incidentes_falt_Perm as 
SELECT        dbo.ro_empleado.IdEmpresa, dbo.ro_empleado.IdEmpleado, dbo.tb_persona.IdPersona, dbo.ro_cargo.IdCargo, dbo.ro_Departamento.IdDepartamento, 
                         Fj_servindustrias.ro_marcaciones_x_empleado_x_incidentes_falt_Perm.IdRegistro, Fj_servindustrias.ro_marcaciones_x_empleado_x_incidentes_falt_Perm.Id_catalogo_Cat, dbo.tb_persona.pe_cedulaRuc, 
                         dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, dbo.ro_cargo.ca_descripcion, dbo.ro_Departamento.de_descripcion, 
                         Fj_servindustrias.ro_marcaciones_x_empleado_x_incidentes_falt_Perm.es_fecha_registro
FROM            dbo.ro_empleado INNER JOIN
                         Fj_servindustrias.ro_marcaciones_x_empleado_x_incidentes_falt_Perm ON dbo.ro_empleado.IdEmpresa = Fj_servindustrias.ro_marcaciones_x_empleado_x_incidentes_falt_Perm.IdEmpresa AND 
                         dbo.ro_empleado.IdEmpleado = Fj_servindustrias.ro_marcaciones_x_empleado_x_incidentes_falt_Perm.IdEmpleado INNER JOIN
                         dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona AND dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona INNER JOIN
                         dbo.ro_Departamento ON dbo.ro_empleado.IdEmpresa = dbo.ro_Departamento.IdEmpresa AND dbo.ro_empleado.IdDepartamento = dbo.ro_Departamento.IdDepartamento AND 
                         dbo.ro_empleado.IdEmpresa = dbo.ro_Departamento.IdEmpresa AND dbo.ro_empleado.IdDepartamento = dbo.ro_Departamento.IdDepartamento INNER JOIN
                         dbo.ro_cargo ON dbo.ro_empleado.IdEmpresa = dbo.ro_cargo.IdEmpresa AND dbo.ro_empleado.IdCargo = dbo.ro_cargo.IdCargo AND dbo.ro_empleado.IdEmpresa = dbo.ro_cargo.IdEmpresa AND 
                         dbo.ro_empleado.IdCargo = dbo.ro_cargo.IdCargo