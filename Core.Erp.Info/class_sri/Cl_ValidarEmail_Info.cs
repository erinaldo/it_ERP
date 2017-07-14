﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace Core.Erp.Info.class_sri
{
  public  class Cl_ValidarEmail_Info
    {
      public Boolean email_bien_escrito(String email)
      {
          String expresion;
          expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
          if (Regex.IsMatch(email, expresion))
          {
              if (Regex.Replace(email, expresion, String.Empty).Length == 0)
              {
                  return true;
              }
              else
              {
                  return false;
              }
          }
          else
          {
              return false;
          }
      }
    }
}
