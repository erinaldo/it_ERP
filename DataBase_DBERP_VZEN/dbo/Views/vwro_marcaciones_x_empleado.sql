﻿CREATE VIEW [dbo].[vwro_marcaciones_x_empleado]
AS
SELECT        dbo.ro_marcaciones_x_empleado.IdEmpresa, dbo.ro_marcaciones_x_empleado.IdRegistro, dbo.ro_marcaciones_x_empleado.IdEmpleado, 
                         dbo.ro_marcaciones_x_empleado.IdTipoMarcaciones, dbo.ro_marcaciones_x_empleado.secuencia, dbo.ro_marcaciones_x_empleado.es_Hora, 
                         dbo.ro_marcaciones_x_empleado.es_fechaRegistro, dbo.ro_marcaciones_x_empleado.es_anio, dbo.ro_marcaciones_x_empleado.es_mes, 
                         dbo.ro_marcaciones_x_empleado.es_semana, dbo.ro_marcaciones_x_empleado.es_dia, dbo.ro_marcaciones_x_empleado.es_sdia, 
                         dbo.ro_marcaciones_x_empleado.es_idDia, dbo.ro_marcaciones_x_empleado.es_EsActualizacion, 
                         dbo.ro_marcaciones_x_empleado.IdTipoMarcaciones_Biometrico, dbo.tb_persona.pe_nombreCompleto AS nom_compl_empleado, 
                         dbo.ro_marcaciones_x_empleado.Motivo_Anu, dbo.ro_marcaciones_x_empleado.Estado, dbo.ro_marcaciones_x_empleado.Observacion, 
                         dbo.ro_marcaciones_x_empleado.IdUsuario, dbo.ro_marcaciones_x_empleado.Fecha_Transac, dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, 
                         dbo.ro_empleado.em_codigo, dbo.tb_persona.pe_cedulaRuc
FROM            dbo.ro_marcaciones_x_empleado INNER JOIN
                         dbo.ro_empleado ON dbo.ro_marcaciones_x_empleado.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_marcaciones_x_empleado.IdEmpleado = dbo.ro_empleado.IdEmpleado INNER JOIN
                         dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona




GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[64] 4[4] 2[14] 3) )"
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
         Begin Table = "ro_marcaciones_x_empleado"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 291
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "ro_empleado"
            Begin Extent = 
               Top = 0
               Left = 463
               Bottom = 308
               Right = 752
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "tb_persona"
            Begin Extent = 
               Top = 72
               Left = 222
               Bottom = 257
               Right = 432
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
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
         SortOrder', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwro_marcaciones_x_empleado';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N' = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwro_marcaciones_x_empleado';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwro_marcaciones_x_empleado';

