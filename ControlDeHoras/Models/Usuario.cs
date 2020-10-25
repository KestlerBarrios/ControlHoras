namespace ControlDeHoras.Models
{
    public class Usuario
    {
        private int codigoColaborador { get; set; }
        private string nombreColaborador { get; set; }
        private string correo { get; set; }
        private int telefono { get; set; }
        private string direccion { get; set; }
        private int edad { get; set; }
        public Usuario(int codigo, string nombre, string correo, int telefono, string direccion, int edad)
        {
            this.codigoColaborador = codigo;
            this.nombreColaborador = nombre;
            this.correo = correo;
            this.telefono = telefono;
            this.direccion = direccion;
            this.edad = edad;
        }
    }
}