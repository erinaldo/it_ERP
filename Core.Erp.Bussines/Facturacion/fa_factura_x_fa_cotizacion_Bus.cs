﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Core.Erp.Info.Facturacion;
using Core.Erp.Data.Facturacion;
using Core.Erp.Business.General;
using Core.Erp.Info.Contabilidad;
using Core.Erp.Data.Contabilidad;
using Core.Erp.Business.Contabilidad;
using Core.Erp.Info.General;
using Core.Erp.Data.General;
using Core.Erp.Info.Inventario;
using Core.Erp.Business.Inventario;
using Core.Erp.Data.Inventario;
using Core.Erp.Info.class_sri.FacturaV2;
using Core.Erp.Info.CuentasxCobrar;
using Core.Erp.Business.CuentasxCobrar;



namespace Core.Erp.Business.Facturacion
{
  public class fa_factura_x_fa_cotizacion_Bus
    {

      fa_factura_x_fa_cotizacion_Data data = new fa_factura_x_fa_cotizacion_Data();

      public fa_factura_x_fa_cotizacion_info Get_Info_CotizacionxFactura(int IdEmpresa, int IdSucursal, int IdBodega, decimal IdCbteVta)
      {

          try
          {
              return data.Get_Info_fa_factura_x_fa_cotizacion(IdEmpresa, IdSucursal, IdBodega, IdCbteVta);
          }
          catch (Exception ex)
          {
              Core.Erp.Info.Log_Exception.LoggingManager.Logger.Log(Core.Erp.Info.Log_Exception.LoggingCategory.Error, ex.Message);
              throw new Core.Erp.Info.Log_Exception.DalException(string.Format("", "get_CbteCble_x_Costo_Info", ex.Message), ex) { EntityType = typeof(fa_factura_Bus) };

          }

      }

      public Boolean GuardarFacxCot(fa_factura_x_fa_cotizacion_info info)
      {
          try
          {
              return data.GuardarFacxCot(info);
          }
          catch (Exception ex)
          {
              Core.Erp.Info.Log_Exception.LoggingManager.Logger.Log(Core.Erp.Info.Log_Exception.LoggingCategory.Error, ex.Message);
              throw new Core.Erp.Info.Log_Exception.DalException(string.Format("", "Obtener_Bodegas", ex.Message), ex) { EntityType = typeof(fa_factura_Bus) };

          }
      }

    }
}
