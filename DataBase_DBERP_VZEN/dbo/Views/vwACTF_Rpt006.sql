﻿
CREATE VIEW [dbo].[vwACTF_Rpt006]
AS
SELECT        af.IdEmpresa, af.Id_Mejora_Baja_Activo, af.Id_Tipo, act.IdActivoFijo, act.Af_Nombre, emp.nom_encargado AS NomCompleto, mar.Descripcion AS Af_Marca, 
                         dis.Descripcion AS Af_Modelo, act.Af_NumSerie, col.Descripcion AS Af_Color, ubi.Descripcion AS Af_Ubicacion, act.Af_Vida_Util, act.Af_Meses_depreciar, 
                         act.Af_porcentaje_deprec, pro.IdProveedor, pro.pr_nombre, af.ValorActivo, af.Valor_Mej_Baj_Activo, af.Compr_Mej_Baj, af.DescripcionTecnica, af.Motivo, af.Estado, 
                         af.Fecha_Transac, af.IdUsuario
FROM            dbo.Af_Mej_Baj_Activo AS af INNER JOIN
                         dbo.Af_Activo_fijo AS act ON af.IdEmpresa = act.IdEmpresa AND af.IdActivoFijo = act.IdActivoFijo INNER JOIN
                         dbo.cp_proveedor AS pro ON pro.IdEmpresa = af.IdEmpresa AND pro.IdProveedor = af.IdProveedor INNER JOIN
                         dbo.Af_Catalogo AS mar ON mar.IdCatalogo = act.IdCatalogo_Marca INNER JOIN
                         dbo.Af_Catalogo AS col ON col.IdCatalogo = act.IdCatalogo_Color INNER JOIN
                         dbo.Af_Catalogo AS ubi ON ubi.IdCatalogo = act.IdTipoCatalogo_Ubicacion INNER JOIN
                         dbo.Af_Catalogo AS dis ON dis.IdCatalogo = act.IdCatalogo_Modelo LEFT OUTER JOIN
                         dbo.Af_Encargado AS emp ON emp.IdEmpresa = act.IdEmpresa AND emp.IdEncargado = act.IdEncargado



