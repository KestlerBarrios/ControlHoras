namespace ControlDeHoras.Models
{
    public class Tipo_Actividad
    {
        private int idActividad { get; set; }
        private string nombreActividad { get; set; }

        public Tipo_Actividad(int idactividad, string actividad)
        {
            idActividad = idactividad;
            nombreActividad = actividad;
        }

    }
}