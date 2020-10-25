using System;

namespace ControlDeHoras.Models
{
    public class Control_Semanal
    {
        private int idControlSemanal { get; set; }
        private DateTime fechaRegistro { get; set; }
        private int cantidadHoras { get; set; }
        private string descripcion { get; set; }
        private decimal totalActividad { get; set; }
        private int idActividad { get; set; }
        private int codigoColaborador { get; set; }
        private int idProyecto { get; set; }
        private int idSalario { get; set; }
        public Control_Semanal(int idControlSemanal, DateTime fechaRegistro, int cantidadHoras, string descripcion, decimal totalActividad, int idActividad, int codigoColaborador, int idProyecto, int idSalario)
        {
            this.idControlSemanal = idControlSemanal;
            this.fechaRegistro = fechaRegistro;
            this.cantidadHoras = cantidadHoras;
            this.descripcion = descripcion;
            this.totalActividad = totalActividad;
            this.idActividad = idActividad;
            this.codigoColaborador = codigoColaborador;
            this.idProyecto = idProyecto;
            this.idSalario = idSalario;            
        }
    }
}