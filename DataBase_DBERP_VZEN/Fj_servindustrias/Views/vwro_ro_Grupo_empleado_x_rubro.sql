create view  Fj_servindustrias.vwro_ro_Grupo_empleado_x_rubro as
SELECT        Fj_servindustrias.ro_Grupo_empleado.IdEmpresa, Fj_servindustrias.ro_Grupo_empleado.IdGrupo, dbo.ro_empleado.IdEmpleado, 
                         Fj_servindustrias.ro_Grupo_empleado_Detalle.IdRubro, Fj_servindustrias.ro_Grupo_empleado_Detalle.Valor
FROM            Fj_servindustrias.ro_Grupo_empleado INNER JOIN
                         Fj_servindustrias.ro_Grupo_empleado_Detalle ON 
                         Fj_servindustrias.ro_Grupo_empleado.IdEmpresa = Fj_servindustrias.ro_Grupo_empleado_Detalle.IdEmpresa RIGHT OUTER JOIN
                         dbo.ro_empleado ON Fj_servindustrias.ro_Grupo_empleado.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         Fj_servindustrias.ro_Grupo_empleado.IdGrupo = dbo.ro_empleado.IdGrupo
