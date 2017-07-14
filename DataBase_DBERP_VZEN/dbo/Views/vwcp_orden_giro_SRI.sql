﻿CREATE VIEW dbo.vwcp_orden_giro_SRI
AS
SELECT        dbo.cp_orden_giro.IdEmpresa, dbo.cp_orden_giro.IdCbteCble_Ogiro, dbo.cp_orden_giro.IdTipoCbte_Ogiro, dbo.cp_orden_giro.IdOrden_giro_Tipo, dbo.cp_orden_giro.IdProveedor, dbo.cp_orden_giro.co_fechaOg, 
                         dbo.cp_orden_giro.co_serie, dbo.cp_orden_giro.co_factura, dbo.cp_orden_giro.co_FechaFactura, dbo.cp_orden_giro.co_FechaContabilizacion, dbo.cp_orden_giro.co_FechaFactura_vct, 
                         dbo.cp_orden_giro.co_observacion, dbo.cp_orden_giro.co_total, dbo.tb_persona.IdTipoDocumento, dbo.tb_persona.pe_cedulaRuc, dbo.tb_persona.pe_razonSocial, dbo.tb_persona.pe_Naturaleza, 
                         dbo.cp_orden_giro.co_vaCoa, dbo.cp_orden_giro.IdIden_credito, dbo.cp_orden_giro.IdCod_101, dbo.cp_orden_giro.co_subtotal_iva, dbo.cp_orden_giro.co_subtotal_siniva, dbo.cp_orden_giro.co_baseImponible, 
                         dbo.cp_orden_giro.co_Por_iva, dbo.cp_orden_giro.co_valoriva, dbo.cp_orden_giro.IdCod_ICE, dbo.cp_orden_giro.co_Ice_base, dbo.cp_orden_giro.co_Ice_por, dbo.cp_orden_giro.co_Ice_valor, 
                         dbo.cp_orden_giro.co_Serv_por, dbo.cp_orden_giro.co_Serv_valor, dbo.cp_orden_giro.Estado, dbo.cp_orden_giro.PagoLocExt, dbo.cp_orden_giro.PaisPago, dbo.cp_orden_giro.Num_Autorizacion, 
                         dbo.cp_orden_giro.cp_es_comprobante_electronico, dbo.cp_proveedor.es_empresa_relacionada, dbo.cp_orden_giro.Tipodoc_a_Modificar, dbo.cp_orden_giro.estable_a_Modificar, 
                         dbo.cp_orden_giro.ptoEmi_a_Modificar, dbo.cp_orden_giro.num_docu_Modificar, dbo.cp_orden_giro.aut_doc_Modificar
FROM            dbo.cp_orden_giro INNER JOIN
                         dbo.cp_proveedor ON dbo.cp_orden_giro.IdEmpresa = dbo.cp_proveedor.IdEmpresa AND dbo.cp_orden_giro.IdProveedor = dbo.cp_proveedor.IdProveedor INNER JOIN
                         dbo.tb_persona ON dbo.cp_proveedor.IdPersona = dbo.tb_persona.IdPersona
WHERE        (dbo.cp_orden_giro.Estado = 'A')

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcp_orden_giro_SRI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[80] 4[5] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cp_orden_giro"
            Begin Extent = 
               Top = 0
               Left = 84
               Bottom = 213
               Right = 325
            End
            DisplayFlags = 280
            TopColumn = 59
         End
         Begin Table = "cp_proveedor"
            Begin Extent = 
               Top = 6
               Left = 394
               Bottom = 169
               Right = 626
            End
            DisplayFlags = 280
            TopColumn = 34
         End
         Begin Table = "tb_persona"
            Begin Extent = 
               Top = 4
               Left = 692
               Bottom = 192
               Right = 924
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcp_orden_giro_SRI';



