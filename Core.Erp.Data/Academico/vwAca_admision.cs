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
    
    public partial class vwAca_admision
    {
        public int IdInstitucion { get; set; }
        public decimal IdAdmision { get; set; }
        public string cod_Admision { get; set; }
        public Nullable<decimal> IdPersona { get; set; }
        public decimal IdAspirante { get; set; }
        public string IdTipoDocumento { get; set; }
        public string pe_cedulaRuc { get; set; }
        public string pe_nombre { get; set; }
        public string pe_apellido { get; set; }
        public Nullable<System.DateTime> pe_fechaNacimiento { get; set; }
        public string pe_sexo { get; set; }
        public string lugar { get; set; }
        public string IdPais_Nacionalidad { get; set; }
        public string pe_direccion { get; set; }
        public string barrio { get; set; }
        public string pe_telefonoCasa { get; set; }
        public string pe_telfono_Contacto { get; set; }
        public string pe_correo { get; set; }
        public string Estado { get; set; }
        public int IdAnioLectivo { get; set; }
        public int IdCurso { get; set; }
        public int IdSeccion { get; set; }
        public int IdJornada { get; set; }
        public int IdSede { get; set; }
        public string IdCatalogo_Grupo_Fami_convivencia { get; set; }
        public string IdCatalogo_Idioma_Nati { get; set; }
        public string IdCatalogo_Tipo_Religion { get; set; }
        public string IdCatalogo_Tipo_Sangre { get; set; }
        public string Telefono_Emer { get; set; }
        public string Base { get; set; }
        public string pe_estado { get; set; }
        public int Posee_Discapacidad { get; set; }
        public int Tiene_Her_nuestro_cole { get; set; }
        public int Tiene_Her_otros_cole { get; set; }
        public string UsuarioAnulacion { get; set; }
        public string UsuarioCreacion { get; set; }
        public string UsuarioModificacion { get; set; }
        public Nullable<System.DateTime> FechaAnulacion { get; set; }
        public Nullable<System.DateTime> FechaCreacion { get; set; }
        public Nullable<System.DateTime> FechaModificacion { get; set; }
        public int Actu_Asis_Estable_Edu { get; set; }
        public int Hijo_de_prof_del_coleg { get; set; }
        public int Hijo_unico { get; set; }
        public string En_q_grado_tiene_her { get; set; }
        public string Estable_Edu_donde_asis { get; set; }
    }
}
