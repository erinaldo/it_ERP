﻿CREATE view [dbo].[vw_WSProduccionCidersus_Trazabilidad_IngresoEtapas] as 
select IdEmpresa,IdSucursal,IdMovimiento,CodigoBarra,NombreEtapa,DescripcionPieza, Nombre,FechaTransaccion from vw_WSProduccionCidersus_TrazabilidadPro
union
select IdEmpresa,IdSucursal,IdNumMovi,CodigoBarra,tm_descripcion,pr_descripcion,dm_observacion,Fecha_Transac from vw_WSProduccionCidersus_Trazabilidad


