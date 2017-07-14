

CREATE VIEW [dbo].[vwcp_retencion]
AS
SELECT        re.IdEmpresa, re.IdRetencion, re.IdEmpresa_Ogiro, Og.IdCbteCble_Ogiro AS IdCbte_CXP, Og.IdTipoCbte_Ogiro, SUBSTRING(TiDoc.Descripcion, 1, 3) 
                         + '-' + + Og.co_serie + '-' + Og.co_factura AS Factura_Prov, Og.co_FechaFactura, 'RT-' + re.serie1 + '-' + re.serie2 + '-' + RTRIM(CAST(re.NumRetencion AS varchar(20)))
                          AS NumeroRT, re.fecha AS Fecha_RT, re.NAutorizacion AS AutorizacionRT, re.Estado AS EstadoRT, re.re_EstaImpresa AS ImpresaRT, 
                         re.observacion AS observacionRT, re.re_Tiene_RTiva, re.re_Tiene_RFuente, Prov.IdProveedor, Prov.pr_nombre AS Nombre_Prov, TiDoc.Descripcion, 
                         SUM(dbo.cp_retencion_det.re_valor_retencion) AS Total_Retencion, re.serie1 + '-' + re.serie2 AS serie, re.NumRetencion, re.IdUsuario, re.Fecha_Transac, 
                         re.Fecha_Autorizacion
FROM            dbo.cp_retencion_det INNER JOIN
                         dbo.cp_retencion AS re ON dbo.cp_retencion_det.IdEmpresa = re.IdEmpresa AND dbo.cp_retencion_det.IdRetencion = re.IdRetencion LEFT OUTER JOIN
                         dbo.cp_proveedor AS Prov INNER JOIN
                         dbo.cp_orden_giro AS Og ON Prov.IdEmpresa = Og.IdEmpresa AND Prov.IdProveedor = Og.IdProveedor INNER JOIN
                         dbo.cp_TipoDocumento AS TiDoc ON Og.IdOrden_giro_Tipo = TiDoc.CodTipoDocumento ON re.IdEmpresa_Ogiro = Og.IdEmpresa AND 
                         re.IdCbteCble_Ogiro = Og.IdCbteCble_Ogiro AND re.IdTipoCbte_Ogiro = Og.IdTipoCbte_Ogiro
GROUP BY re.IdEmpresa_Ogiro, Og.IdCbteCble_Ogiro, Og.IdTipoCbte_Ogiro, SUBSTRING(TiDoc.Descripcion, 1, 3) + '-' + + Og.co_serie + '-' + Og.co_factura, 
                         Og.co_FechaFactura, re.IdRetencion, 'RT-' + re.serie1 + '-' + re.serie2 + '-' + RTRIM(CAST(re.NumRetencion AS varchar(20))), re.fecha, re.NAutorizacion, re.Estado, 
                         re.re_EstaImpresa, re.observacion, re.re_Tiene_RTiva, re.re_Tiene_RFuente, Prov.IdProveedor, Prov.pr_nombre, TiDoc.Descripcion, re.IdEmpresa, 
                         re.serie1 + '-' + re.serie2, re.NumRetencion, re.IdUsuario, re.Fecha_Transac, re.Fecha_Autorizacion

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcp_retencion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcp_retencion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[67] 4[4] 2[1] 3) )"
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
         Begin Table = "cp_retencion_det"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 263
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "re"
            Begin Extent = 
               Top = 5
               Left = 432
               Bottom = 318
               Right = 657
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Prov"
            Begin Extent = 
               Top = 78
               Left = 788
               Bottom = 207
               Right = 1025
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Og"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 531
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TiDoc"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 663
               Right = 323
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
      Begin ColumnWidths = 20
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcp_retencion';

