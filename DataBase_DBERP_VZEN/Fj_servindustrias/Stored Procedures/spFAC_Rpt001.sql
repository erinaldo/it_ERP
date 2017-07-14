
CREATE PROCEDURE  Fj_servindustrias.spFAC_Rpt001
	@IdEmpresa int,
	@IdPeriodo int

AS
/*
declare 

	@IdEmpresa int,
	@IdPeriodo int

	set @IdEmpresa=1
	set @IdPeriodo=201610
	*/
BEGIN
	delete Fj_servindustrias.ROLES_Rpt009_tmp where IdEmpresa=@IdEmpresa
	and IdPeriodo=@IdPeriodo

	insert into Fj_servindustrias.ROLES_Rpt009_tmp
	(IdEmpresa, IdPeriodo, IdProveedor,secuencia, fecha,Proveedor,Cantidad , Factura,Descripcion,Total,Fuerza)
	
	select @IdEmpresa,@IdPeriodo, G.IdProveedor,ROW_NUMBER() OVER (ORDER BY G.IdEmpresa),G.co_FechaFactura,G.nom_Proveedor,G.Cantidad,G.co_factura,G.Descripcion,G.Total, null
	from Fj_servindustrias.vwfa_pre_facturacion_det_Fact_x_Gastos as G
	where IdEmpresa=@IdEmpresa
	

	select * from Fj_servindustrias.ROLES_Rpt009_tmp



END
GO
