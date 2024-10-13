namespace WebAPI.Models
{
    public class MatriculaModel
    {
        public int id { get; set; }

        public int estudiante_id { get; set; }

        public int curso_id { get; set; }

        public DateTime fecha_matricula { get; set; }

        public string adicionado_por { get; set; }

        public DateTime fecha_adicion { get; set; }

        public string? modificado_por { get; set; }

        public DateTime? fecha_modificacion { get; set; }
    }
}
