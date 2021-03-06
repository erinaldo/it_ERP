﻿CREATE procedure [dbo].[spSys_IniciaModu_in] @IdEmpresa int
as
begin

	delete from dbo.in_Producto where IdEmpresa=@IdEmpresa
	delete from dbo.in_ProductoTipo where IdEmpresa=@IdEmpresa
	delete from dbo.in_Marca where IdEmpresa=@IdEmpresa
	delete from dbo.in_categorias where IdEmpresa=@IdEmpresa
	delete from dbo.in_ajusteFisico where IdEmpresa=@IdEmpresa
	delete from dbo.in_AjusteFisico_Detalle where IdEmpresa=@IdEmpresa
	delete from dbo.in_kardex_det where IdEmpresa=@IdEmpresa
	delete from dbo.in_kardex where IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inve_detalle_x_com_ordencompra_local_det where mi_IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inve_detalle_x_Producto_CusCider where IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inve_x_in_ordencompra_local where IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inven_tipo_x_tb_bodega where IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inven_X_imp_OrdCompraExterna where imp_IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inven_x_in_movi_inven_CusCidersus where IdEmpresa1=@IdEmpresa
	delete from dbo.in_moviInventario_x_GestionProdLaminados_Cus_Talme where mov_IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inven_tipo where IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inve_detalle where IdEmpresa=@IdEmpresa
	delete from dbo.in_movi_inve where IdEmpresa=@IdEmpresa
	delete from dbo.in_parametro where IdEmpresa=@IdEmpresa
	delete from dbo.in_PrecargaItemsOrdenCompra_det where IdEmpresa=@IdEmpresa
	delete from dbo.in_PrecargaItemsOrdenCompra where IdEmpresa=@IdEmpresa
	delete from dbo.in_presupuesto_det where IdEmpresa=@IdEmpresa
	delete from dbo.in_presupuesto where IdEmpresa=@IdEmpresa
	delete from dbo.in_Producto_Composicion where IdEmpresa=@IdEmpresa
	delete from dbo.in_producto_x_cp_proveedor where IdEmpresa_prod=@IdEmpresa
	delete from dbo.in_producto_x_tb_bodega where IdEmpresa=@IdEmpresa
	delete from dbo.in_recepcion_material_cab where IdEmpresa=@IdEmpresa
	delete from dbo.in_recepcion_material_det where IdEmpresa=@IdEmpresa
	delete from dbo.in_transferencia_det where IdEmpresa=@IdEmpresa
	delete from dbo.in_transferencia where IdEmpresa=@IdEmpresa

	
end



