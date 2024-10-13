namespace WebAPI.Models
{
    public class EstudianteModel
    {
        public int id { get; set; }

        public string identificacion { get; set; }

        public string nombre { get; set; }

        public string primer_apellido { get; set; }

        public string segundo_apellido { get; set; }

        public DateTime fecha_nacimiento { get; set; }

        public string adicionado_por { get; set; }

        public DateTime fecha_adicion { get; set; }

        public string? modificado_por { get; set; }

        public DateTime? fecha_modificacion { get; set; }
    }
}
