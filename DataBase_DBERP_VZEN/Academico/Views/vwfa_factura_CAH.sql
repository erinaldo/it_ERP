﻿CREATE VIEW [Academico].[vwfa_factura_CAH] as 
	SELECT        fact_agrupadas.IdEmpresa, fact_agrupadas.IdBodega, fact_agrupadas.IdCbteVta, fact_agrupadas.IdSucursal, fact_agrupadas.CodCbteVta, fact_agrupadas.vt_tipoDoc, fact_agrupadas.vt_serie1, 
                         fact_agrupadas.vt_serie2, fact_agrupadas.vt_NumFactura, fact_agrupadas.IdCliente, fact_agrupadas.IdVendedor, fact_agrupadas.vt_fecha, fact_agrupadas.vt_plazo, fact_agrupadas.vt_fech_venc, 
                         fact_agrupadas.vt_tipo_venta, fact_agrupadas.vt_Observacion, fact_agrupadas.IdPeriodo, fact_agrupadas.vt_anio, fact_agrupadas.vt_mes, fact_agrupadas.vt_flete, fact_agrupadas.vt_interes, 
                         fact_agrupadas.vt_OtroValor1, fact_agrupadas.vt_OtroValor2, fact_agrupadas.IdUsuario, fact_agrupadas.Fecha_Transaccion, fact_agrupadas.IdUsuarioUltModi, fact_agrupadas.Fecha_UltMod, 
                         fact_agrupadas.IdUsuarioUltAnu, fact_agrupadas.Fecha_UltAnu, fact_agrupadas.MotivoAnulacion, fact_agrupadas.nom_pc, fact_agrupadas.ip, fact_agrupadas.Estado, fact_agrupadas.Su_Descripcion, 
                         fact_agrupadas.bo_Descripcion, fact_agrupadas.Secuencia, fact_agrupadas.Ve_Vendedor, fact_agrupadas.pe_nombreCompleto, fact_agrupadas.vt_autorizacion, fact_agrupadas.IdTipoDocumento, 
                         fact_agrupadas.pe_cedulaRuc, fact_agrupadas.IdCaja, fact_agrupadas.IdEmpresa_nc_anu, fact_agrupadas.IdSucursal_nc_anu, fact_agrupadas.IdBodega_nc_anu, fact_agrupadas.IdNota_nc_anu, 
                         fact_agrupadas.vt_seguro, SUM(fact_agrupadas.vt_Subtotal) AS vt_Subtotal, SUM(fact_agrupadas.vt_iva) AS vt_iva, SUM(fact_agrupadas.vt_total) AS vt_total, SUM(fact_agrupadas.vt_Subtotal0) AS vt_Subtotal0, 
                         SUM(fact_agrupadas.vt_SubtotalIva) AS vt_SubtotalIva, fact_agrupadas.IdPuntoVta, tb_persona_1.pe_apellido, tb_persona_1.pe_nombre
FROM            (SELECT        dbo.fa_factura.IdEmpresa, dbo.fa_factura.IdBodega, dbo.fa_factura.IdCbteVta, dbo.fa_factura.IdSucursal, dbo.fa_factura.CodCbteVta, dbo.fa_factura.vt_tipoDoc, dbo.fa_factura.vt_serie1, 
                                                    dbo.fa_factura.vt_serie2, dbo.fa_factura.vt_NumFactura, dbo.fa_factura.IdCliente, dbo.fa_factura.IdVendedor, dbo.fa_factura.vt_fecha, dbo.fa_factura.vt_plazo, dbo.fa_factura.vt_fech_venc, 
                                                    dbo.fa_factura.vt_tipo_venta, dbo.fa_factura.vt_Observacion, dbo.fa_factura.IdPeriodo, dbo.fa_factura.vt_anio, dbo.fa_factura.vt_mes, dbo.fa_factura.vt_flete, dbo.fa_factura.vt_interes, 
                                                    dbo.fa_factura.vt_OtroValor1, dbo.fa_factura.vt_OtroValor2, dbo.fa_factura.IdUsuario, dbo.fa_factura.Fecha_Transaccion, dbo.fa_factura.IdUsuarioUltModi, dbo.fa_factura.Fecha_UltMod, 
                                                    dbo.fa_factura.IdUsuarioUltAnu, dbo.fa_factura.Fecha_UltAnu, dbo.fa_factura.MotivoAnulacion, dbo.fa_factura.nom_pc, dbo.fa_factura.ip, dbo.fa_factura.Estado, dbo.tb_sucursal.Su_Descripcion, 
                                                    dbo.tb_bodega.bo_Descripcion, 0 AS Secuencia, dbo.fa_Vendedor.Ve_Vendedor, dbo.tb_persona.pe_nombreCompleto, dbo.fa_factura.vt_autorizacion, dbo.tb_persona.IdTipoDocumento, 
                                                    dbo.tb_persona.pe_cedulaRuc, dbo.fa_factura.IdCaja, dbo.fa_factura.IdEmpresa_nc_anu, dbo.fa_factura.IdSucursal_nc_anu, dbo.fa_factura.IdBodega_nc_anu, dbo.fa_factura.IdNota_nc_anu, 
                                                    dbo.fa_factura.vt_seguro, SUM(dbo.fa_factura_det.vt_Subtotal) AS vt_Subtotal, SUM(dbo.fa_factura_det.vt_iva) AS vt_iva, SUM(dbo.fa_factura_det.vt_total) AS vt_total, 
                                                    CASE WHEN dbo.fa_factura_det.IdCod_Impuesto_Iva = 'IVA0' THEN SUM(dbo.fa_factura_det.vt_Subtotal) ELSE 0 END AS vt_Subtotal0, 
                                                    CASE WHEN dbo.fa_factura_det.IdCod_Impuesto_Iva <> 'IVA0' THEN SUM(dbo.fa_factura_det.vt_Subtotal) ELSE 0 END AS vt_SubtotalIva, dbo.fa_factura.IdPuntoVta
                          FROM            dbo.fa_factura INNER JOIN
                                                    dbo.tb_sucursal ON dbo.fa_factura.IdEmpresa = dbo.tb_sucursal.IdEmpresa AND dbo.fa_factura.IdSucursal = dbo.tb_sucursal.IdSucursal INNER JOIN
                                                    dbo.tb_bodega ON dbo.tb_sucursal.IdEmpresa = dbo.tb_bodega.IdEmpresa AND dbo.tb_sucursal.IdSucursal = dbo.tb_bodega.IdSucursal AND 
                                                    dbo.fa_factura.IdBodega = dbo.tb_bodega.IdBodega INNER JOIN
                                                    dbo.fa_factura_det ON dbo.fa_factura.IdEmpresa = dbo.fa_factura_det.IdEmpresa AND dbo.fa_factura.IdSucursal = dbo.fa_factura_det.IdSucursal AND 
                                                    dbo.fa_factura.IdBodega = dbo.fa_factura_det.IdBodega AND dbo.fa_factura.IdCbteVta = dbo.fa_factura_det.IdCbteVta INNER JOIN
                                                    dbo.fa_cliente ON dbo.fa_factura.IdEmpresa = dbo.fa_cliente.IdEmpresa AND dbo.fa_factura.IdCliente = dbo.fa_cliente.IdCliente INNER JOIN
                                                    dbo.fa_Vendedor ON dbo.fa_factura.IdEmpresa = dbo.fa_Vendedor.IdEmpresa AND dbo.fa_factura.IdVendedor = dbo.fa_Vendedor.IdVendedor INNER JOIN
                                                    dbo.tb_persona ON dbo.fa_cliente.IdPersona = dbo.tb_persona.IdPersona
                          GROUP BY dbo.fa_factura.IdEmpresa, dbo.fa_factura.IdBodega, dbo.fa_factura.IdCbteVta, dbo.fa_factura.IdSucursal, dbo.fa_factura.CodCbteVta, dbo.fa_factura.vt_tipoDoc, dbo.fa_factura.vt_serie1, 
                                                    dbo.fa_factura.vt_serie2, dbo.fa_factura.vt_NumFactura, dbo.fa_factura.IdCliente, dbo.fa_factura.IdVendedor, dbo.fa_factura.vt_fecha, dbo.fa_factura.vt_plazo, dbo.fa_factura.vt_fech_venc, 
                                                    dbo.fa_factura.vt_tipo_venta, dbo.fa_factura.vt_Observacion, dbo.fa_factura.IdPeriodo, dbo.fa_factura.vt_anio, dbo.fa_factura.vt_mes, dbo.fa_factura.vt_flete, dbo.fa_factura.vt_interes, 
                                                    dbo.fa_factura.vt_OtroValor1, dbo.fa_factura.vt_OtroValor2, dbo.fa_factura.IdUsuario, dbo.fa_factura.Fecha_Transaccion, dbo.fa_factura.IdUsuarioUltModi, dbo.fa_factura.Fecha_UltMod, 
                                                    dbo.fa_factura.IdUsuarioUltAnu, dbo.fa_factura.Fecha_UltAnu, dbo.fa_factura.MotivoAnulacion, dbo.fa_factura.nom_pc, dbo.fa_factura.ip, dbo.fa_factura.Estado, dbo.tb_sucursal.Su_Descripcion, 
                                                    dbo.tb_bodega.bo_Descripcion, dbo.fa_Vendedor.Ve_Vendedor, dbo.tb_persona.pe_nombreCompleto, dbo.fa_factura.vt_autorizacion, dbo.tb_persona.IdTipoDocumento, 
                                                    dbo.tb_persona.pe_cedulaRuc, dbo.fa_factura.IdCaja, dbo.fa_factura.IdEmpresa_nc_anu, dbo.fa_factura.IdSucursal_nc_anu, dbo.fa_factura.IdBodega_nc_anu, dbo.fa_factura.IdNota_nc_anu, 
                                                    dbo.fa_factura.vt_seguro, dbo.fa_factura_det.IdCod_Impuesto_Iva, dbo.fa_factura.IdPuntoVta) AS fact_agrupadas INNER JOIN
                         Academico.fa_factura_aca ON fact_agrupadas.IdEmpresa = Academico.fa_factura_aca.IdEmpresa AND fact_agrupadas.IdCbteVta = Academico.fa_factura_aca.IdCbteVta INNER JOIN
                         dbo.Aca_estudiante ON Academico.fa_factura_aca.IdInstitucion = dbo.Aca_estudiante.IdInstitucion AND Academico.fa_factura_aca.IdEstudiante = dbo.Aca_estudiante.IdEstudiante INNER JOIN
                         dbo.tb_persona AS tb_persona_1 ON dbo.Aca_estudiante.IdPersona = tb_persona_1.IdPersona
GROUP BY fact_agrupadas.IdEmpresa, fact_agrupadas.IdBodega, fact_agrupadas.IdCbteVta, fact_agrupadas.IdSucursal, fact_agrupadas.CodCbteVta, fact_agrupadas.vt_tipoDoc, fact_agrupadas.vt_serie1, 
                         fact_agrupadas.vt_serie2, fact_agrupadas.vt_NumFactura, fact_agrupadas.IdCliente, fact_agrupadas.IdVendedor, fact_agrupadas.vt_fecha, fact_agrupadas.vt_plazo, fact_agrupadas.vt_fech_venc, 
                         fact_agrupadas.vt_tipo_venta, fact_agrupadas.vt_Observacion, fact_agrupadas.IdPeriodo, fact_agrupadas.vt_anio, fact_agrupadas.vt_mes, fact_agrupadas.vt_flete, fact_agrupadas.vt_interes, 
                         fact_agrupadas.vt_OtroValor1, fact_agrupadas.vt_OtroValor2, fact_agrupadas.IdUsuario, fact_agrupadas.Fecha_Transaccion, fact_agrupadas.IdUsuarioUltModi, fact_agrupadas.Fecha_UltMod, 
                         fact_agrupadas.IdUsuarioUltAnu, fact_agrupadas.Fecha_UltAnu, fact_agrupadas.MotivoAnulacion, fact_agrupadas.nom_pc, fact_agrupadas.ip, fact_agrupadas.Estado, fact_agrupadas.Su_Descripcion, 
                         fact_agrupadas.bo_Descripcion, fact_agrupadas.Secuencia, fact_agrupadas.Ve_Vendedor, fact_agrupadas.pe_nombreCompleto, fact_agrupadas.vt_autorizacion, fact_agrupadas.IdTipoDocumento, 
                         fact_agrupadas.pe_cedulaRuc, fact_agrupadas.IdCaja, fact_agrupadas.IdEmpresa_nc_anu, fact_agrupadas.IdSucursal_nc_anu, fact_agrupadas.IdBodega_nc_anu, fact_agrupadas.IdNota_nc_anu, 
                         fact_agrupadas.vt_seguro, fact_agrupadas.IdPuntoVta, tb_persona_1.pe_apellido, tb_persona_1.pe_nombre
