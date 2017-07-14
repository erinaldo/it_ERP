﻿CREATE VIEW [dbo].[vwCXP_Rpt002]
AS
SELECT        dbo.cp_orden_giro.IdEmpresa, dbo.cp_orden_giro.IdCbteCble_Ogiro, dbo.cp_orden_giro.IdTipoCbte_Ogiro, dbo.cp_orden_giro.IdOrden_giro_Tipo, 
                         dbo.cp_TipoDocumento.Codigo + '#:' + CAST(dbo.cp_orden_giro.IdCbteCble_Ogiro AS VARCHAR(20)) 
                         + '/' + dbo.cp_orden_giro.co_serie + '-' + dbo.cp_orden_giro.co_factura AS Documento, dbo.cp_TipoDocumento.Descripcion AS nom_tipo_doc, 
                         dbo.cp_TipoDocumento.Codigo AS cod_tipo_doc, dbo.cp_orden_giro.co_fechaOg AS Fecha, dbo.cp_proveedor.IdProveedor, 
                         dbo.cp_proveedor.pr_nombre AS nom_proveedor, dbo.cp_orden_giro.co_valorpagar AS Valor_a_pagar, 0 AS Valor_debe, 
                         dbo.cp_orden_giro.co_total * - 1 AS Valor_Haber, dbo.cp_orden_giro.co_observacion AS Observacion, dbo.tb_persona.pe_cedulaRuc AS Ruc_Proveedor, 
                         dbo.cp_proveedor.representante_legal, dbo.cp_proveedor.IdClaseProveedor, dbo.cp_proveedor_clase.descripcion_clas_prove AS nom_clase_proveedor
FROM            dbo.cp_orden_giro INNER JOIN
                         dbo.cp_TipoDocumento ON dbo.cp_orden_giro.IdOrden_giro_Tipo = dbo.cp_TipoDocumento.CodTipoDocumento INNER JOIN
                         dbo.cp_proveedor ON dbo.cp_orden_giro.IdEmpresa = dbo.cp_proveedor.IdEmpresa AND 
                         dbo.cp_orden_giro.IdProveedor = dbo.cp_proveedor.IdProveedor INNER JOIN
                         dbo.tb_persona ON dbo.cp_proveedor.IdPersona = dbo.tb_persona.IdPersona INNER JOIN
                         dbo.cp_proveedor_clase ON dbo.cp_proveedor.IdEmpresa = dbo.cp_proveedor_clase.IdEmpresa AND 
                         dbo.cp_proveedor.IdClaseProveedor = dbo.cp_proveedor_clase.IdClaseProveedor




GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[58] 4[20] 2[4] 3) )"
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
               Top = 6
               Left = 38
               Bottom = 110
               Right = 264
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cp_TipoDocumento"
            Begin Extent = 
               Top = 0
               Left = 426
               Bottom = 129
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cp_proveedor"
            Begin Extent = 
               Top = 158
               Left = 383
               Bottom = 374
               Right = 604
            End
            DisplayFlags = 280
            TopColumn = 24
         End
         Begin Table = "tb_persona"
            Begin Extent = 
               Top = 135
               Left = 30
               Bottom = 264
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cp_proveedor_clase"
            Begin Extent = 
               Top = 133
               Left = 704
               Bottom = 307
               Right = 967
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
   ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCXP_Rpt002';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'      Width = 1500
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
         Alias = 4560
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCXP_Rpt002';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCXP_Rpt002';

