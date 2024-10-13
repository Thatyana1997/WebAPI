namespace WebAPI.Models
{
    public class CursoModel
    {
        public int id { get; set; }

        public string nombre { get; set; }

        public string descripcion { get; set; }

        public string adicionado_por { get; set; }

        public DateTime fecha_adicion { get; set; }

        public string? modificado_por { get; set; }

        public DateTime? fecha_modificacion { get; set; }

    }
}
