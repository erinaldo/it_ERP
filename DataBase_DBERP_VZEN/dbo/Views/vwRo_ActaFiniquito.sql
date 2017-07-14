﻿
CREATE view [dbo].[vwRo_ActaFiniquito] as 

SELECT        dbo.tb_persona.pe_nombreCompleto AS NombreCompleto, dbo.tb_persona.pe_cedulaRuc AS Identificacion, dbo.tb_persona.IdTipoDocumento AS TipoIdentificacion, 
                         dbo.tb_persona.pe_fechaNacimiento AS FechaNcto, dbo.ro_cargo.ca_descripcion AS Cargo, dbo.ro_Departamento.de_descripcion AS Departamento, 
                         dbo.ro_contrato.IdContrato_Tipo, dbo.ro_contrato.NumDocumento, dbo.ro_contrato.FechaInicio, dbo.ro_contrato.FechaFin, dbo.ro_contrato.Estado AS EstadoContrato, 
                         dbo.ro_contrato.Observacion AS ObservacionContrato, dbo.ro_Acta_Finiquito.IdEmpresa, dbo.ro_Acta_Finiquito.IdActaFiniquito, dbo.ro_Acta_Finiquito.IdEmpleado, 
                         dbo.ro_Acta_Finiquito.IdCausaTerminacion, dbo.ro_Acta_Finiquito.IdContrato, dbo.ro_Acta_Finiquito.IdCargo, dbo.ro_Acta_Finiquito.FechaIngreso, 
                         dbo.ro_Acta_Finiquito.FechaSalida, dbo.ro_Acta_Finiquito.UltimaRemuneracion, dbo.ro_Acta_Finiquito.Observacion AS ObservacionFiniquito, 
                         dbo.ro_Acta_Finiquito.Ingresos, dbo.ro_Acta_Finiquito.Egresos, dbo.ro_Acta_Finiquito.IdUsuario, dbo.ro_Acta_Finiquito.Fecha_Transac, 
                         dbo.ro_Acta_Finiquito.IdUsuarioUltMod, dbo.ro_Acta_Finiquito.Fecha_UltMod, dbo.ro_Acta_Finiquito.IdUsuarioUltAnu, dbo.ro_Acta_Finiquito.Fecha_UltAnu, 
                         dbo.ro_Acta_Finiquito.nom_pc, dbo.ro_Acta_Finiquito.ip, dbo.ro_Acta_Finiquito.Estado AS EstadoActa, dbo.ro_Acta_Finiquito.MotiAnula, 
                         dbo.ro_Acta_Finiquito.IdCodSectorial, dbo.ro_Acta_Finiquito.EsMujerEmbarazada, dbo.ro_Acta_Finiquito.EsDirigenteSindical, 
                         dbo.ro_Acta_Finiquito.EsPorDiscapacidad, dbo.ro_Acta_Finiquito.EsPorEnfermedadNoProfesional, dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, 
                         dbo.ro_empleado.em_codigo
FROM            dbo.ro_Acta_Finiquito INNER JOIN
                         dbo.ro_empleado ON dbo.ro_Acta_Finiquito.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_Acta_Finiquito.IdEmpleado = dbo.ro_empleado.IdEmpleado INNER JOIN
                         dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona INNER JOIN
                         dbo.ro_Departamento ON dbo.ro_empleado.IdEmpresa = dbo.ro_Departamento.IdEmpresa AND 
                         dbo.ro_empleado.IdDepartamento = dbo.ro_Departamento.IdDepartamento INNER JOIN
                         dbo.ro_contrato ON dbo.ro_Acta_Finiquito.IdEmpresa = dbo.ro_contrato.IdEmpresa AND dbo.ro_Acta_Finiquito.IdEmpleado = dbo.ro_contrato.IdEmpleado AND 
                         dbo.ro_Acta_Finiquito.IdContrato = dbo.ro_contrato.IdContrato INNER JOIN
                         dbo.ro_cargo ON dbo.ro_Acta_Finiquito.IdEmpresa = dbo.ro_cargo.IdEmpresa AND dbo.ro_Acta_Finiquito.IdCargo = dbo.ro_cargo.IdCargo









GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[23] 2[5] 3) )"
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
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ro_Acta_Finiquito"
            Begin Extent = 
               Top = 40
               Left = 326
               Bottom = 276
               Right = 535
            End
            DisplayFlags = 280
            TopColumn = 17
         End
         Begin Table = "ro_empleado"
            Begin Extent = 
               Top = 1
               Left = 728
               Bottom = 157
               Right = 991
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_persona"
            Begin Extent = 
               Top = 4
               Left = 1064
               Bottom = 133
               Right = 1273
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ro_Departamento"
            Begin Extent = 
               Top = 169
               Left = 1008
               Bottom = 298
               Right = 1217
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "ro_contrato"
            Begin Extent = 
               Top = 50
               Left = 33
               Bottom = 253
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ro_cargo"
            Begin Extent = 
               Top = 170
               Left = 690
               Bottom = 299
               Right = 899
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
      Begin ColumnWidths = 40
         Width = 284
         Width ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRo_ActaFiniquito';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'= 1500
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
         Column = 1845
         Alias = 2265
         Table = 2160
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRo_ActaFiniquito';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRo_ActaFiniquito';

