//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data.Academico
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwAca_Contrato_Preparacion_x_Estudiante
    {
        public int IdInstitucion { get; set; }
        public int IdSede { get; set; }
        public int IdParalelo { get; set; }
        public int IdCurso { get; set; }
        public int IdSeccion { get; set; }
        public int IdJornada { get; set; }
        public string cod_estudiante { get; set; }
        public int IdAnioLectivo { get; set; }
        public decimal IdMatricula { get; set; }
        public decimal IdEstudiante { get; set; }
        public string Institucion { get; set; }
        public string Sede { get; set; }
        public string Jornada { get; set; }
        public string Seccion { get; set; }
        public string Curso { get; set; }
        public string Paralelo { get; set; }
        public string pe_nombre { get; set; }
        public string pe_apellido { get; set; }
        public string pe_cedulaRuc { get; set; }
        public string pe_direccion { get; set; }
        public string pe_telefonoCasa { get; set; }
        public string pe_telefonoOfic { get; set; }
        public Nullable<System.DateTime> FechaCreacionEstudiante { get; set; }
        public System.DateTime FechaMatricula { get; set; }
        public decimal IdContrato { get; set; }
        public Nullable<bool> estado_contrato_pago_garantizado { get; set; }
        public bool estado { get; set; }
    }
}
