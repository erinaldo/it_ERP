CREATE view  vwct_centro_costo_sub_centro_costo
as
SELECT        dbo.ct_centro_costo_sub_centro_costo.IdEmpresa, dbo.ct_centro_costo_sub_centro_costo.IdCentroCosto, 
                         dbo.ct_centro_costo_sub_centro_costo.IdCentroCosto_sub_centro_costo, dbo.ct_centro_costo_sub_centro_costo.cod_subcentroCosto, 
                         dbo.ct_centro_costo_sub_centro_costo.Centro_costo AS nom_Centro_costo_sub_centro_costo, dbo.ct_centro_costo_sub_centro_costo.pc_Estado, 
                         dbo.ct_centro_costo_sub_centro_costo.IdCtaCble, dbo.ct_centro_costo.Centro_costo AS nom_Centro_costo, dbo.ct_plancta.pc_Cuenta, 
                         dbo.ct_plancta.pc_clave_corta
FROM            dbo.ct_centro_costo_sub_centro_costo INNER JOIN
                         dbo.ct_centro_costo ON dbo.ct_centro_costo_sub_centro_costo.IdEmpresa = dbo.ct_centro_costo.IdEmpresa AND 
                         dbo.ct_centro_costo_sub_centro_costo.IdCentroCosto = dbo.ct_centro_costo.IdCentroCosto LEFT OUTER JOIN
                         dbo.ct_plancta ON dbo.ct_centro_costo_sub_centro_costo.IdCtaCble = dbo.ct_plancta.IdCtaCble