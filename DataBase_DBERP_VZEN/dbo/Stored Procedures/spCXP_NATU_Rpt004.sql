--exec [spCXP_NATU_Rpt004] 1,0,9999,'01/01/2016','31/10/2016',7,7
CREATE procedure [dbo].[spCXP_NATU_Rpt004]

 @IdEmpresa int,
 @IdProveedorIni numeric(18,0),
 @IdProveedorFin numeric(18,0),
 @fechaIni datetime,
 @fechaFin datetime,
 @IdClaseProveedorIni int,
 @IdClaseProveedorFin int

 as

SELECT        IdEmpresa, IdProveedor, nom_proveedor, SUM(Deb) AS Debitos, SUM(Cred) AS Creditos, SUM(Sal) AS Saldo, IdClaseProveedor, descripcion_clas_prove
FROM            (SELECT        IdEmpresa, IdProveedor, nom_proveedor, co_fechaOg, SUM(Valor_debe) AS Deb, SUM(Valor_Haber) AS Cred, SUM(Saldo) AS Sal, IdClaseProveedor, 
                                                    descripcion_clas_prove
                          FROM            dbo.vwCXP_Rpt001
                          GROUP BY IdEmpresa, IdProveedor, nom_proveedor, co_fechaOg, IdClaseProveedor, descripcion_clas_prove) AS a

where a.co_fechaOg between @fechaIni and @fechaFin
and a.IdEmpresa=@IdEmpresa and a.IdProveedor >=@IdProveedorIni and a.IdProveedor<= @IdProveedorFin
and a.IdClaseProveedor between @IdClaseProveedorIni and @IdClaseProveedorFin

GROUP BY IdEmpresa, IdProveedor, nom_proveedor, IdClaseProveedor, descripcion_clas_prove


--select * from vwCXP_Rpt001 where (Valor_Haber - Valor_debe) <> Saldo


