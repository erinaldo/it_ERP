CREATE VIEW [dbo].[vwCOMP_Rpt009]
AS 
SELECT        com_solicitud_compra_det.IdEmpresa, com_solicitud_compra_det.IdSucursal, com_solicitud_compra_det.IdSolicitudCompra, com_solicitud_compra_det.Secuencia, 
                         com_solicitud_compra.fecha AS fecha_sol, com_solicitante.IdSolicitante, com_solicitante.nom_solicitante, 
                         CASE WHEN com_solicitud_compra_det.IdProducto IS NULL AND com_ordencompra_local_det.IdProducto IS NULL THEN NULL 
                         WHEN com_solicitud_compra_det.IdProducto IS NOT NULL THEN in_Producto_sol.pr_codigo WHEN com_ordencompra_local_det.IdProducto IS NOT NULL 
                         THEN in_Producto_com.pr_codigo END AS pr_codigo, 
						 
						 CASE WHEN com_solicitud_compra_det.IdProducto IS NULL AND com_ordencompra_local_det.IdProducto IS NULL 
							THEN 0 
						WHEN com_solicitud_compra_det.IdProducto IS NOT NULL 
							THEN com_solicitud_compra_det.IdProducto 
						WHEN com_ordencompra_local_det.IdProducto IS NOT NULL 
							THEN com_ordencompra_local_det.IdProducto END AS IdProducto, 

                         CASE WHEN com_solicitud_compra_det.IdProducto IS NULL AND com_ordencompra_local_det.IdProducto IS NULL 
                         THEN com_solicitud_compra_det.NomProducto WHEN com_solicitud_compra_det.IdProducto IS NOT NULL 
                         THEN in_Producto_sol.pr_descripcion WHEN com_ordencompra_local_det.IdProducto IS NOT NULL THEN in_Producto_com.pr_descripcion END AS nom_producto, 
                         com_solicitud_compra_det.do_Cantidad AS cantidad_sol, com_solicitud_compra_det.IdPunto_cargo, ct_punto_cargo.nom_punto_cargo, 
                         com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdEmpresa, com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdSucursal, 
                         com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdOrdenCompra, com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_Secuencia, 
                         com_ordencompra_local.IdProveedor, tb_persona.pe_nombreCompleto, com_ordencompra_local.oc_fecha AS fecha_oc, 
                         com_ordencompra_local_det.do_Cantidad AS cantidad_com, com_ordencompra_local_det.do_precioCompra, MAX(in_Ing_Egr_Inven.cm_fecha) AS fecha_inv, 
                         SUM(in_Ing_Egr_Inven_det.dm_cantidad) AS cantidad_inv
FROM            com_solicitante INNER JOIN
                         com_solicitud_compra INNER JOIN
                         com_solicitud_compra_det ON com_solicitud_compra.IdEmpresa = com_solicitud_compra_det.IdEmpresa AND 
                         com_solicitud_compra.IdSucursal = com_solicitud_compra_det.IdSucursal AND 
                         com_solicitud_compra.IdSolicitudCompra = com_solicitud_compra_det.IdSolicitudCompra ON com_solicitante.IdEmpresa = com_solicitud_compra.IdEmpresa AND 
                         com_solicitante.IdSolicitante = com_solicitud_compra.IdSolicitante LEFT OUTER JOIN
                         in_Producto AS in_Producto_sol ON com_solicitud_compra_det.IdEmpresa = in_Producto_sol.IdEmpresa AND 
                         com_solicitud_compra_det.IdProducto = in_Producto_sol.IdProducto LEFT OUTER JOIN
                         in_Ing_Egr_Inven INNER JOIN
                         in_Ing_Egr_Inven_det ON in_Ing_Egr_Inven.IdEmpresa = in_Ing_Egr_Inven_det.IdEmpresa AND in_Ing_Egr_Inven.IdSucursal = in_Ing_Egr_Inven_det.IdSucursal AND
                          in_Ing_Egr_Inven.IdMovi_inven_tipo = in_Ing_Egr_Inven_det.IdMovi_inven_tipo AND 
                         in_Ing_Egr_Inven.IdNumMovi = in_Ing_Egr_Inven_det.IdNumMovi RIGHT OUTER JOIN
                         cp_proveedor INNER JOIN
                         com_ordencompra_local_det_x_com_solicitud_compra_det INNER JOIN
                         com_ordencompra_local_det INNER JOIN
                         com_ordencompra_local ON com_ordencompra_local_det.IdEmpresa = com_ordencompra_local.IdEmpresa AND 
                         com_ordencompra_local_det.IdSucursal = com_ordencompra_local.IdSucursal AND 
                         com_ordencompra_local_det.IdOrdenCompra = com_ordencompra_local.IdOrdenCompra ON 
                         com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdEmpresa = com_ordencompra_local_det.IdEmpresa AND 
                         com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdSucursal = com_ordencompra_local_det.IdSucursal AND 
                         com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdOrdenCompra = com_ordencompra_local_det.IdOrdenCompra AND 
                         com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_Secuencia = com_ordencompra_local_det.Secuencia ON 
                         cp_proveedor.IdEmpresa = com_ordencompra_local.IdEmpresa AND cp_proveedor.IdProveedor = com_ordencompra_local.IdProveedor INNER JOIN
                         tb_persona ON cp_proveedor.IdPersona = tb_persona.IdPersona INNER JOIN
                         in_Producto AS in_Producto_com ON com_ordencompra_local_det.IdEmpresa = in_Producto_com.IdEmpresa AND 
                         com_ordencompra_local_det.IdProducto = in_Producto_com.IdProducto ON in_Ing_Egr_Inven_det.IdEmpresa_oc = com_ordencompra_local_det.IdEmpresa AND 
                         in_Ing_Egr_Inven_det.IdSucursal_oc = com_ordencompra_local_det.IdSucursal AND 
                         in_Ing_Egr_Inven_det.IdOrdenCompra = com_ordencompra_local_det.IdOrdenCompra AND 
                         in_Ing_Egr_Inven_det.Secuencia_oc = com_ordencompra_local_det.Secuencia ON 
                         com_solicitud_compra_det.IdEmpresa = com_ordencompra_local_det_x_com_solicitud_compra_det.scd_IdEmpresa AND 
                         com_solicitud_compra_det.IdSucursal = com_ordencompra_local_det_x_com_solicitud_compra_det.scd_IdSucursal AND 
                         com_solicitud_compra_det.IdSolicitudCompra = com_ordencompra_local_det_x_com_solicitud_compra_det.scd_IdSolicitudCompra AND 
                         com_solicitud_compra_det.Secuencia = com_ordencompra_local_det_x_com_solicitud_compra_det.scd_Secuencia LEFT OUTER JOIN
                         ct_punto_cargo ON com_solicitud_compra_det.IdEmpresa = ct_punto_cargo.IdEmpresa AND 
                         com_solicitud_compra_det.IdPunto_cargo = ct_punto_cargo.IdPunto_cargo
GROUP BY com_solicitud_compra_det.IdEmpresa, com_solicitud_compra_det.IdSucursal, com_solicitud_compra_det.IdSolicitudCompra, com_solicitud_compra_det.Secuencia, 
                         com_solicitud_compra.fecha, com_solicitante.IdSolicitante, com_solicitante.nom_solicitante, com_solicitud_compra_det.IdProducto,
						 com_ordencompra_local_det.IdProducto, in_producto_sol.pr_codigo, in_Producto_com.pr_codigo,com_solicitud_compra_det.NomProducto,in_producto_sol.pr_descripcion,
						 in_producto_com.pr_descripcion,com_solicitud_compra_det.do_Cantidad, 
                         com_solicitud_compra_det.IdPunto_cargo, ct_punto_cargo.nom_punto_cargo, com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdEmpresa, 
                         com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdSucursal, com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_IdOrdenCompra, 
                         com_ordencompra_local_det_x_com_solicitud_compra_det.ocd_Secuencia, com_ordencompra_local.IdProveedor, tb_persona.pe_nombreCompleto, 
                         com_ordencompra_local.oc_fecha, com_ordencompra_local_det.do_Cantidad, com_ordencompra_local_det.do_precioCompra