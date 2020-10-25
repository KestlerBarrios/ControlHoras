using System;

namespace ControlDeHoras.Models
{
    public class Historico_Salario
    {
        private int idSalario { get; set; }
        private decimal salario { get; set; }
        private DateTime fecha { get; set; }
        private decimal costoHora { get; set; }

        public Historico_Salario(int idSalario, decimal salario, DateTime fecha, decimal costoHora)
        {
            this.idSalario = idSalario;
            this.salario = salario;
            this.fecha = fecha;
            this.costoHora = costoHora;
        }

    }
}