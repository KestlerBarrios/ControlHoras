namespace ControlDeHoras.Models
{
    public class Proyecto
    {
        private int idProyecto { get; set; }
        private string nombreProyecto { get; set; }

        public Proyecto(int idproyecto, string proyecto){
            idProyecto = idproyecto;
            nombreProyecto = proyecto;
        }

    }
}